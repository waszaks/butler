import os

from sqlalchemy.ext.automap import automap_base
from sqlalchemy.orm import sessionmaker
from sqlalchemy import create_engine
from sqlalchemy.orm.scoping import scoped_session

DB_URL = os.environ['DB_URL']
Base = automap_base()
engine = create_engine(DB_URL)
Base.prepare(engine, reflect=True)

session_factory  = sessionmaker(bind=engine, expire_on_commit=False)
Session = scoped_session(session_factory)