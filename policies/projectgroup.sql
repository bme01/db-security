grant select on projectgroup to all_hr;
grant select,update on projectgroup to all_staff;

CREATE OR REPLACE
FUNCTION show_projectgroup(v_schema IN VARCHAR2, v_obj IN VARCHAR2)
RETURN VARCHAR2 AS
condition VARCHAR2 (200);
BEGIN
IF INSTR(SYS_CONTEXT('USERENV', 'SESSION_USER'),'COMPANY') = 1 THEN
		RETURN '';
END IF;
IF INSTR(SYS_CONTEXT('USERENV', 'SESSION_USER'),'HR') = 1 THEN
		RETURN '';
END IF;
RETURN 'PID IN (SELECT PID FROM PROJECT WHERE LEADER = (SYS_CONTEXT(''USERENV'', ''SESSION_USER'' ))) OR PARTICIPANT = (SYS_CONTEXT(''USERENV'', ''SESSION_USER'' ))';
END show_projectgroup;

BEGIN
	DBMS_RLS.ADD_POLICY (
		object_schema	=>	'company',
		object_name	=>	'projectgroup',
		policy_name	=>	'show_projectgroup_policy',
		policy_function	=>	'show_projectgroup',
		statement_types => 'SELECT',
		update_check => TRUE);
END;

BEGIN
	DBMS_RLS.DROP_POLICY (
		object_schema	=>	'company',
		object_name	=>	'projectgroup',
		policy_name	=>	'show_projectgroup_policy');
END;

CREATE OR REPLACE
FUNCTION update_projectgroup(v_schema IN VARCHAR2, v_obj IN VARCHAR2)
RETURN VARCHAR2 AS
condition VARCHAR2 (200);
BEGIN
IF INSTR(SYS_CONTEXT('USERENV', 'SESSION_USER'),'COMPANY') = 1 THEN
		RETURN '';
END IF;
RETURN 'PID IN (SELECT PID FROM PROJECT WHERE LEADER = (SYS_CONTEXT(''USERENV'', ''SESSION_USER'' )))';
END update_projectgroup;

BEGIN
	DBMS_RLS.ADD_POLICY (
		object_schema	=>	'company',
		object_name	=>	'projectgroup',
		policy_name	=>	'update_projectgroup_policy',
		policy_function	=>	'update_projectgroup',
		statement_types => 'UPDATE',
		update_check => TRUE);
END;

BEGIN
	DBMS_RLS.DROP_POLICY (
		object_schema	=>	'company',
		object_name	=>	'projectgroup',
		policy_name	=>	'update_projectgroup');
END;