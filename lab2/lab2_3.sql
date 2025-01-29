SELECT BRANCH.branch_id, BRANCH.branchLocation
FROM BRANCH
INNER JOIN staff
ON BRANCH.branch_id = staff.branch_id;