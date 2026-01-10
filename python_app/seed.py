import re
import os
from datetime import datetime
from app import create_app, db
from app.models import MaturityLevel, ProcessAreaCategory, ProcessArea, GenericGoal, GenericPractice, SpecificGoal, SpecificPractice, GenericPracticeElaboration

# Helper function to parse Ruby hash syntax to Python dict
def parse_ruby_hash(ruby_str):
    # This is a basic parser and might need adjustment based on specific anomalies in seeds.rb
    # It converts Ruby style keys like `key: value` to valid JSON/Dict format
    
    # Remove creates
    content = ruby_str.strip()
    
    # Regex to capture content inside curly braces
    # This is a simplified approach. Given the complexity of the description strings, 
    # we might be better off running a regex to capture each object block.
    pass

def run_seeds():
    app = create_app()
    with app.app_context():
        print("Clearing existing data...")
        db.drop_all()
        db.create_all()

        print("Reading seeds.rb...")
        with open('../ruby_rails_app/db/seeds.rb', 'r', encoding='utf-8') as f:
            content = f.read()

        # Define patterns for each model
        # Pattern looks for `Model.create([ ... ])`
        # Inside, we match `{ ... }` blocks.
        
        models_map = {
            'MaturityLevel': MaturityLevel,
            'ProcessAreaCategory': ProcessAreaCategory,
            'ProcessArea': ProcessArea,
            'GenericGoal': GenericGoal,
            'GenericPractice': GenericPractice,
            'SpecificGoal': SpecificGoal,
            'SpecificPractice': SpecificPractice,
            'GenericPracticeElaboration': GenericPracticeElaboration
        }

        for model_name, model_class in models_map.items():
            print(f"Seeding {model_name}...")
            # Regex to find the block for this model
            # matches: model_var = ModelName.create([ content ])
            pattern = re.compile(rf'{model_name}\.create\(\[(.*?)\]\)', re.DOTALL)
            match = pattern.search(content)
            
            if match:
                data_block = match.group(1)
                
                # Split by `}, {` to separate objects, preserving braces
                # This is tricky because descriptions contain commas and braces.
                # A better approach might be to match individual objects using a regex that handles balanced braces,
                # but since we are in Python, let's use a specific regex for the fields known in seeds.rb.

                # Alternative: The seeds.rb format is consistently `{ key: val, key: val }`
                # key is `id`, `name`, `description`, etc.
                # values can be 'single quoted strings' or "double quoted strings" or integers.
                
                # Let's iterate through the block matching `{ ... }` patterns
                # This regex attempts to match a full object enclosed in {}
                # It is non-greedy but handles newlines
                obj_pattern = re.compile(r'\{([^{}]+)\}', re.DOTALL)
                # The above is too simple for nested braces if they exist, but seeds.rb seems flat.
                # Descriptions might contain braces? Let's hope not or they are escaped.
                
                # Actually, simply `eval`ing after some string replacement might be dangerous but effective for this specific task
                # if we translate Ruby syntax to Python syntax.
                
                # Transform strategy:
                # 1. Capture the list content
                # 2. Replace keys
                # 3. Handle multiline strings: Ruby allows '...' across lines. Python needs '''...''' or escaped newlines.
                
                py_list_str = data_block
                
                # 1. Replace Keys
                known_keys = ['id', 'name', 'description', 'purpose', 'summary', 'maturity_level_id', 
                              'process_area_category_id', 'process_area_id', 'generic_goal_id', 
                              'specific_goal_id', 'generic_practice_id', 'gp_elaboration']
                
                for key in known_keys:
                    py_list_str = re.sub(rf'(?<=[{{,\s]){key}:', f'"{key}":', py_list_str)

                # 2. Convert Ruby strings to Python Triple Quotes to handle newlines
                # Use a combined regex to avoid "quote inside other quote" issues.
                # Match either '...' OR "..."
                # Group 1: content of single quoted string
                # Group 2: content of double quoted string
                string_pattern = re.compile(r"'((?:[^'\\]|\\.)*)'|\"((?:[^\"\\]|\\.)*)\"")
                
                def ruby_string_to_python(match):
                    # Check which group matched
                    if match.group(1) is not None:
                        content = match.group(1)
                        # It was a single quoted string
                    else:
                        content = match.group(2)
                        # It was a double quoted string
                    
                    # Convert to triple-quoted string to handle newlines safety
                    # We also need to be careful with triple quotes inside content?
                    # Unlikely in this data, but good to know.
                    if '\n' in content:
                        return f'"""{content}"""'
                    return f'"{content}"'

                py_list_str = string_pattern.sub(ruby_string_to_python, py_list_str)

                # 3. Replace nil
                py_list_str = py_list_str.replace(' nil', ' None')
                
                # 4. Wrap in brackets
                py_list_str = "[" + py_list_str + "]"

                try:
                    data_list = eval(py_list_str)
                    
                    for item in data_list:
                        # Check exist
                        exists = db.session.get(model_class, item['id'])
                        if not exists:
                            obj = model_class(**item)
                            db.session.add(obj)
                    
                    db.session.commit()
                    print(f"  -> Uploaded {len(data_list)} records.")
                    
                except Exception as e:
                    print(f"  -> Error parsing {model_name}: {e}")

if __name__ == '__main__':
    run_seeds()
