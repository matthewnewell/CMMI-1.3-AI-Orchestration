from flask import Blueprint, render_template
from app.models import MaturityLevel

bp = Blueprint('main', __name__)

@bp.route('/')
@bp.route('/home')
def home():
    return render_template('static_pages/home.html')

@bp.route('/about')
def about():
    return render_template('static_pages/about.html')

@bp.route('/introduction')
def introduction():
    return render_template('static_pages/introduction.html')

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
