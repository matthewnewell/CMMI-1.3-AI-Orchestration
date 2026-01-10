import os
import markdown
from flask import Blueprint, render_template, current_app

bp = Blueprint('main', __name__)

@bp.route('/')
@bp.route('/home')
def home():
    return render_template('static_pages/home.html')

@bp.route('/about_this_project')
def about_this_project():
    # Assume README is in the repo root, which is one level up from python_app
    # app is in python_app/app
    
    # Construct path to README.md
    # We assume the app is running from python_app directory
    # So README is at ../README.md
    
    readme_path = os.path.abspath(os.path.join(os.path.dirname(__file__), '..', '..', 'README.md'))
    
    content = ""
    try:
        with open(readme_path, 'r', encoding='utf-8') as f:
            content = f.read()
    except Exception as e:
        content = f"Error interpreting README.md: {e}"

    html_content = markdown.markdown(content)
    return render_template('static_pages/about_this_project.html', readme_content=html_content)

@bp.route('/about_cmmi')
def about_cmmi():
    return render_template('static_pages/about_cmmi.html')


@bp.route('/maturity_levels')
def maturity_levels():
    levels = MaturityLevel.query.order_by(MaturityLevel.id).all()
    return render_template('maturity_levels.html', levels=levels)

@bp.route('/process_areas')
def process_areas():
    # Grouping by Maturity Level for display
    levels = MaturityLevel.query.order_by(MaturityLevel.id).all()
    return render_template('process_areas.html', levels=levels)

@bp.route('/process_area/<int:pa_id>')
def process_area_detail(pa_id):
    # Need to import ProcessArea
    from app.models import ProcessArea
    pa = ProcessArea.query.get_or_404(pa_id)
    return render_template('process_area_detail.html', result=pa)
