from app import db
from datetime import datetime

class MaturityLevel(db.Model):
    __tablename__ = 'maturity_levels'
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(255))
    description = db.Column(db.Text)
    created_at = db.Column(db.DateTime, default=datetime.utcnow)
    updated_at = db.Column(db.DateTime, default=datetime.utcnow, onupdate=datetime.utcnow)

    process_areas = db.relationship('ProcessArea', backref='maturity_level', lazy='dynamic')

    def __repr__(self):
        return f'<MaturityLevel {self.name}>'

class ProcessAreaCategory(db.Model):
    __tablename__ = 'process_area_categories'
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(255))
    description = db.Column(db.Text)
    created_at = db.Column(db.DateTime, default=datetime.utcnow)
    updated_at = db.Column(db.DateTime, default=datetime.utcnow, onupdate=datetime.utcnow)

    process_areas = db.relationship('ProcessArea', backref='process_area_category', lazy='dynamic')

    def __repr__(self):
        return f'<ProcessAreaCategory {self.name}>'

class ProcessArea(db.Model):
    __tablename__ = 'process_areas'
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(255))
    purpose = db.Column(db.Text)
    maturity_level_id = db.Column(db.Integer, db.ForeignKey('maturity_levels.id'))
    process_area_category_id = db.Column(db.Integer, db.ForeignKey('process_area_categories.id'))
    created_at = db.Column(db.DateTime, default=datetime.utcnow)
    updated_at = db.Column(db.DateTime, default=datetime.utcnow, onupdate=datetime.utcnow)

    specific_goals = db.relationship('SpecificGoal', backref='process_area', lazy='dynamic')
    generic_practice_elaborations = db.relationship('GenericPracticeElaboration', backref='process_area', lazy='dynamic')

    def __repr__(self):
        return f'<ProcessArea {self.name}>'

class SpecificGoal(db.Model):
    __tablename__ = 'specific_goals'
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(255))
    description = db.Column(db.Text)
    process_area_id = db.Column(db.Integer, db.ForeignKey('process_areas.id'))
    created_at = db.Column(db.DateTime, default=datetime.utcnow)
    updated_at = db.Column(db.DateTime, default=datetime.utcnow, onupdate=datetime.utcnow)

    specific_practices = db.relationship('SpecificPractice', backref='specific_goal', lazy='dynamic')

    def __repr__(self):
        return f'<SpecificGoal {self.name}>'

class SpecificPractice(db.Model):
    __tablename__ = 'specific_practices'
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(255))
    summary = db.Column(db.Text)
    description = db.Column(db.Text)
    specific_goal_id = db.Column(db.Integer, db.ForeignKey('specific_goals.id'))
    created_at = db.Column(db.DateTime, default=datetime.utcnow)
    updated_at = db.Column(db.DateTime, default=datetime.utcnow, onupdate=datetime.utcnow)

    def __repr__(self):
        return f'<SpecificPractice {self.name}>'

class GenericGoal(db.Model):
    __tablename__ = 'generic_goals'
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(255))
    description = db.Column(db.Text)
    created_at = db.Column(db.DateTime, default=datetime.utcnow)
    updated_at = db.Column(db.DateTime, default=datetime.utcnow, onupdate=datetime.utcnow)

    generic_practices = db.relationship('GenericPractice', backref='generic_goal', lazy='dynamic')

    def __repr__(self):
        return f'<GenericGoal {self.name}>'

class GenericPractice(db.Model):
    __tablename__ = 'generic_practices'
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(255))
    summary = db.Column(db.Text)
    description = db.Column(db.Text)
    generic_goal_id = db.Column(db.Integer, db.ForeignKey('generic_goals.id'))
    created_at = db.Column(db.DateTime, default=datetime.utcnow)
    updated_at = db.Column(db.DateTime, default=datetime.utcnow, onupdate=datetime.utcnow)

    generic_practice_elaborations = db.relationship('GenericPracticeElaboration', backref='generic_practice', lazy='dynamic')

    def __repr__(self):
        return f'<GenericPractice {self.name}>'

class GenericPracticeElaboration(db.Model):
    __tablename__ = 'generic_practice_elaborations'
    id = db.Column(db.Integer, primary_key=True)
    gp_elaboration = db.Column(db.Text)
    process_area_id = db.Column(db.Integer, db.ForeignKey('process_areas.id'))
    generic_practice_id = db.Column(db.Integer, db.ForeignKey('generic_practices.id'))
    created_at = db.Column(db.DateTime, default=datetime.utcnow)
    updated_at = db.Column(db.DateTime, default=datetime.utcnow, onupdate=datetime.utcnow)

    def __repr__(self):
        return f'<GenericPracticeElaboration {self.id}>'
