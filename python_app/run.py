from app import create_app, db
# Import models here so they are registered with SQLAlchemy
# from app.models import User, Post etc. 

app = create_app()

@app.shell_context_processor
def make_shell_context():
    return {'db': db, 'app': app}

if __name__ == '__main__':
    app.run(debug=True)
