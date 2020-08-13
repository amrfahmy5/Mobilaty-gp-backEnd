import os, glob
from project.config.Database import connection


__all__ = [os.path.basename(f)[:-3] for f in glob.glob(os.path.dirname(__file__) + "/*.py")]


connnT = connection()
cursorT = connnT.connection.cursor(dictionary=True,buffered=True)