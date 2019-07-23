using Kolokwium.numer1.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Kolokwium.numer1.DAL
{
    public class EmployeeDbService
    {
        private EmployeeDbContext _context = new EmployeeDbContext();
        public IEnumerable<EMP> GetEmps()
        {
            return _context.EMPs.ToList();
        }

        public IEnumerable<EMP> searchEmployee(string name)
        {
             return _context.EMPs.Where(e => e.ENAME.Contains(name));
        }

        public EMP UpdateEmployee(int idEmp, String Ename, String Job)
        {
            var employee = _context.EMPs.SingleOrDefault(i => i.EMPNO == idEmp);
            if (employee != null)
            {
                employee.ENAME = Ename;
                employee.JOB = Job;
                _context.SaveChanges();
            }
            return employee;
        }

      


    }
}
