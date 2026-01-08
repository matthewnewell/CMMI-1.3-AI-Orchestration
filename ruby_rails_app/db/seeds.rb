#encoding: utf-8 
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
# Much of the seed text is in Markdown 

maturity_level = MaturityLevel.create([
	{ id: 1, name: '1: Initial',                
		description: 'Processes are usually ad hoc and chaotic. The organization usually does not provide a stable environment to support processes. Success in these organizations depends on the competence and heroics of the people in the organization and not on the use of proven processes. In spite of this chaos, maturity level 1 organizations often produce products and services that work, but they frequently exceed the budget and schedule documented in their plans.

Maturity level 1 organizations are characterized by a tendency to overcommit, abandon their processes in a time of crisis, and be unable to repeat their successes.'},
	{ id: 2, name: '2: Managed',                
		description: 'The projects have ensured that processes are planned and executed in accordance with policy; the projects employ skilled people who have adequate resources to produce controlled outputs; involve relevant stakeholders; are monitored, controlled, and reviewed; and are evaluated for adherence to their process descriptions. The process discipline reflected by maturity level 2 helps to ensure that existing practices are retained during times of stress. When these practices are in place, projects are performed and managed according to their documented plans.  

Also at maturity level 2, the status of the work products are visible to management at defined points (e.g., at major milestones, at the completion of major tasks). Commitments are established among relevant stakeholders and are revised as needed. Work products are appropriately controlled. The work products and services satisfy their specified process descriptions, standards, and procedures.'},
	{ id: 3, name: '3: Defined',                
		description: 'Processes are well characterized and understood, and are described in standards, procedures, tools, and methods. The organization’s set of standard processes, which is the basis for maturity level 3, is established and improved over time. These standard processes are used to establish consistency across the organization. Projects establish their defined processes by tailoring the organization’s set of standard processes according to tailoring guidelines. (See the definition of “organization’s set of standard processes” in the glossary.) 

A critical distinction between maturity levels 2 and 3 is the scope of standards, process descriptions, and procedures. At maturity level 2, the standards, process descriptions, and procedures can be quite different in each specific instance of the process (e.g., on a particular project). At maturity level 3, the standards, process descriptions, and procedures for a project are tailored from the organization’s set of standard processes to suit a particular project or organizational unit and therefore are more consistent except for the differences allowed by the tailoring guidelines. 

Another critical distinction is that at maturity level 3, processes are typically described more rigorously than at maturity level 2. A defined process clearly states the purpose, inputs, entry criteria, activities, roles, measures, verification steps, outputs, and exit criteria. At maturity level 3, processes are managed more proactively using an understanding of the interrelationships of process activities and detailed measures of the process, its work products, and its services. 

At maturity level 3, the organization further improves its processes that are related to the maturity level 2 process areas. Generic practices associated with generic goal 3 that were not addressed at maturity level 2 are applied to achieve maturity level 3.'},
	{ id: 4, name: '4: Quantitatively Managed', 
		description: 'The organization and projects establish quantitative objectives for quality and process performance and use them as criteria in managing projects. Quantitative objectives are based on the needs of the customer, end users, organization, and process implementers. Quality and process performance is understood in statistical terms and is managed throughout the life of projects.  

For selected subprocesses, specific measures of process performance are collected and statistically analyzed. When selecting subprocesses for analyses, it is critical to understand the relationships between different subprocesses and their impact on achieving the objectives for quality and process performance. Such an approach helps to ensure that subprocess monitoring using statistical and other quantitative techniques is applied to where it has the most overall value to the business. Process performance baselines and models can be used to help set quality and process performance objectives that help achieve business objectives. 

A critical distinction between maturity levels 3 and 4 is the predictability of process performance. At maturity level 4, the performance of projects and selected subprocesses is controlled using statistical and other quantitative techniques, and predictions are based, in part, on a statistical analysis of fine-grained process data.'},
	{ id: 5, name: '5: Optimizing',             
		description: 'An organization continually improves its processes based on a quantitative understanding of its business objectives and performance needs. The organization uses a quantitative approach to understand the variation inherent in the process and the causes of process outcomes. 

Maturity level 5 focuses on continually improving process performance through incremental and innovative process and technological improvements. The organization’s quality and process performance objectives are established, continually revised to reflect changing business objectives and organizational performance, and used as criteria in managing process improvement. The effects of deployed process improvements are measured using statistical and other quantitative techniques and compared to quality and process performance objectives. The project’s defined processes, the organization’s set of standard processes, and supporting technology are targets of measurable improvement activities. 

A critical distinction between maturity levels 4 and 5 is the focus on managing and improving organizational performance. At maturity level 4, the organization and projects focus on understanding and controlling performance at the subprocess level and using the results to manage projects. At maturity level 5, the organization is concerned with overall organizational performance using data collected from multiple projects. Analysis of the data identifies shortfalls or gaps in performance. These gaps are used to drive organizational process improvement that generates measureable improvement in performance.'}
	])

process_area_category = ProcessAreaCategory.create([
	{ id: 1, name: 'Support',            
		description: 'Support process areas cover the activities that support product development and maintenance. The Support process areas address processes that are used in the context of performing other processes. In general, the Support process areas address processes that are targeted toward the project and can address processes that apply more generally to the organization.'},
	{ id: 2, name: 'Engineering',        
		description: 'Engineering process areas cover the development and maintenance activities that are shared across engineering disciplines. The Engineering process areas were written using general engineering terminology so that any technical discipline involved in the product development process (e.g., software engineering, mechanical engineering) can use them for process improvement.'},
	{ id: 3, name: 'Project Management', 
		description: 'The Basic Project Management process areas address the activities related to establishing and maintaining the project plan, establishing and maintaining commitments, monitoring progress against the plan, taking corrective action, and managing supplier agreements.'},
	{ id: 4, name: 'Process Management', 
		description: 'The Basic Process Management process areas provide the organization with a capability to document and share best practices, organizational process assets, and learning across the organization.'}
	])

process_area = ProcessArea.create([ 
	{ id: 1,  name: 'Configuration Management (CM)',                maturity_level_id: 2, process_area_category_id: 1, purpose: "The purpose of Configuration Management (CM) is to establish and maintain the integrity of work products using configuration identification, configuration control, configuration status accounting, and configuration audits." },
	{ id: 2,  name: 'Measurement and Analysis (MA)',                maturity_level_id: 2, process_area_category_id: 1, purpose: "The purpose of Measurement and Analysis (MA) is to develop and sustain a measurement capability used to support management information needs."},
	{ id: 3,  name: 'Project Monitoring and Control (PMC)',         maturity_level_id: 2, process_area_category_id: 3, purpose: "The purpose of Project Monitoring and Control (PMC) is to provide an understanding of the project’s progress so that appropriate corrective actions can be taken when the project’s performance deviates significantly from the plan." },
	{ id: 4,  name: 'Project Planning (PP)',                        maturity_level_id: 2, process_area_category_id: 3, purpose: "The purpose of Project Planning (PP) is to establish and maintain plans that define project activities." },
	{ id: 5,  name: 'Process and Product Quality Assurance (PPQA)', maturity_level_id: 2, process_area_category_id: 1, purpose: "The purpose of Process and Product Quality Assurance (PPQA) is to provide staff and management with objective insight into processes and associated work products." },
	{ id: 6,  name: 'Requirements Management (REQM)',               maturity_level_id: 2, process_area_category_id: 3, purpose: "The purpose of Requirements Management (REQM) is to manage requirements of the project’s products and product components and to ensure alignment between those requirements and the project’s plans and work products." },
	{ id: 7,  name: 'Supplier Agreement Management (SAM)',          maturity_level_id: 2, process_area_category_id: 3, purpose: "The purpose of Supplier Agreement Management (SAM) is to manage the acquisition of products and services from suppliers." },
	{ id: 8,  name: 'Decision Analysis and Resolution (DAR)',       maturity_level_id: 3, process_area_category_id: 1, purpose: "The purpose of Decision Analysis and Resolution (DAR) is to analyze possible decisions using a formal evaluation process that evaluates identified alternatives against established criteria." },
	{ id: 9,  name: 'Integrated Project Management (IPM)',          maturity_level_id: 3, process_area_category_id: 3, purpose: "The purpose of Integrated Project Management (IPM) is to establish and manage the project and the involvement of relevant stakeholders according to an integrated and defined process that is tailored from the organization’s set of standard processes." },
	{ id: 10, name: 'Organizational Process Definition (OPD)',      maturity_level_id: 3, process_area_category_id: 4, purpose: "The purpose of Organizational Process Definition (OPD) is to establish and maintain a usable set of organizational process assets, work environment standards, and rules and guidelines for teams." },
	{ id: 11, name: 'Organizational Process Focus (OPF)',           maturity_level_id: 3, process_area_category_id: 4, purpose: "he purpose of Organizational Process Focus (OPF) is to plan, implement, and deploy organizational process improvements based on a thorough understanding of current strengths and weaknesses of the organization’s processes and process assets." },
	{ id: 12, name: 'Organizational Training (OT)',                 maturity_level_id: 3, process_area_category_id: 4, purpose: "The purpose of Organizational Training (OT) is to develop skills and knowledge of people so they can perform their roles effectively and efficiently." },
	{ id: 13, name: 'Product Integration (PI)',                     maturity_level_id: 3, process_area_category_id: 2, purpose: "The purpose of Product Integration (PI) is to assemble the product from the product components, ensure that the product, as integrated, behaves properly (i.e., possesses the required functionality and quality attributes), and deliver the product." },
	{ id: 14, name: 'Requirements Development (RD)',                maturity_level_id: 3, process_area_category_id: 2, purpose: "The purpose of Requirements Development (RD) is to elicit, analyze, and establish customer, product, and product component requirements." },
	{ id: 15, name: 'Risk Management (RSKM)',                       maturity_level_id: 3, process_area_category_id: 3, purpose: "The purpose of Risk Management (RSKM) is to identify potential problems before they occur so that risk handling activities can be planned and invoked as needed across the life of the product or project to mitigate adverse impacts on achieving objectives." },
	{ id: 16, name: 'Technical Solution (TS)',                      maturity_level_id: 3, process_area_category_id: 2, purpose: "The purpose of Technical Solution (TS) is to select, design, and implement solutions to requirements. Solutions, designs, and implementations encompass products, product components, and product related lifecycle processes either singly or in combination as appropriate." },
	{ id: 17, name: 'Validation (VAL)',                             maturity_level_id: 3, process_area_category_id: 2, purpose: "The purpose of Validation (VAL) is to demonstrate that a product or product component fulfills its intended use when placed in its intended environment." },
	{ id: 18, name: 'Verification (VER)',                           maturity_level_id: 3, process_area_category_id: 2, purpose: "The purpose of Verification (VER) is to ensure that selected work products meet their specified requirements." },
	{ id: 19, name: 'Organizational Process Performance (OPP)',     maturity_level_id: 4, process_area_category_id: 4, purpose: "The purpose of Organizational Process Performance (OPP) is to establish and maintain a quantitative understanding of the performance of selected processes in the organization’s set of standard processes in support of achieving quality and process performance objectives, and to provide process performance data, baselines, and models to quantitatively manage the organization’s projects." },
	{ id: 20, name: 'Quantitative Project Management (QPM)',        maturity_level_id: 4, process_area_category_id: 3, purpose: "The purpose of Quantitative Project Management (QPM) is to quantitatively manage the project to achieve the project’s established quality and process performance objectives." },
	{ id: 21, name: 'Causal Analysis and Resolution  (CAR)',        maturity_level_id: 5, process_area_category_id: 1, purpose: "The purpose of Causal Analysis and Resolution (CAR) is to identify causes of selected outcomes and take action to improve process performance." },
	{ id: 22, name: 'Organizational Performance Management (OPM)',  maturity_level_id: 5, process_area_category_id: 4, purpose: "The purpose of Organizational Performance Management (OPM) is to proactively manage the organization’s performance to meet its business objectives." }
	])

generic_goal = GenericGoal.create([
	{ id: 1, name: "GG 1: Achieve Specific Goals", 
		description: "The specific goals of the process area are supported by the process by transforming identifiable input work products into identifiable output work products."},
	{ id: 2, name: "GG 2: Institutionalize a Managed Process", 
		description: "The process is institutionalized as a managed process."}, 
	{ id: 3, name: "GG 3: Institutionalize a Defined Process", 
		description: "The process is institutionalized as a defined process."}
	])

generic_practice = GenericPractice.create([
	{ id: 1, name:  "GP 1.1: Perform Specific Practices", 
		summary: "Perform the specific practices of the process area to develop work products and provide services to achieve the specific goals of the process area.", 
		description: "The purpose of this generic practice is to produce the work products and deliver the services that are expected by performing (i.e., executing) the process. These practices can be done informally without following a documented process description or plan. The rigor with which these practices are performed depends on the individuals managing and performing the work and can vary considerably.", 
		generic_goal_id: 1 },
	{ id: 2, name:  "GP 2.1: Establish an Organizational Policy", 
		summary: "Establish and maintain an organizational policy for planning and performing the process.", 
		description: 'The purpose of this generic practice is to define the organizational expectations for the process and make these expectations visible to those members of the organization who are affected. In general, senior management is responsible for establishing and communicating guiding principles, direction, and expectations for the organization. 

Not all direction from senior management will bear the label “policy.” The existence of appropriate organizational direction is the expectation of this generic practice, regardless of what it is called or how it is imparted.', 
		generic_goal_id: 2 }, 
	{ id: 3, name:  "GP 2.2: Plan the Process", 
		summary: "Establish and maintain the plan for performing the process.", 
		description: 'The purpose of this generic practice is to determine what is needed to perform the process and to achieve the established objectives, to prepare a plan for performing the process, to prepare a process description, and to get agreement on the plan from relevant stakeholders.  

The practical implications of applying a generic practice vary for each process area. For example, the planning described by this generic practice as applied to the Project Monitoring and Control process area can be carried out in full by the processes associated with the Project Planning process area. However, this generic practice, when applied to the Project Planning process area, sets an expectation that the project planning process itself be planned.', 
		generic_goal_id: 2 },
	{ id: 4, name:  "GP 2.3: Provide Resources", 
		summary: "Provide adequate resources for performing the process, developing the work products, and providing the services of the process.", 
		description: 'The purpose of this generic practice is to ensure that the resources necessary to perform the process as defined by the plan are available when they are needed. Resources include adequate funding, appropriate physical facilities, skilled people, and appropriate tools. 

The interpretation of the term “adequate” depends on many factors and can change over time. Inadequate resources may be addressed by increasing resources or by removing requirements, constraints, and commitments.', 
		generic_goal_id: 2 }, 
	{ id: 5, name:  "GP 2.4: Assign Responsibility", 
		summary: "Assign responsibility and authority for performing the process, developing the work products, and providing the services of the process.", 
		description: 'The purpose of this generic practice is to ensure that there is accountability for performing the process and achieving the specified results throughout the life of the process. The people assigned must have the appropriate authority to perform the assigned responsibilities. 

Responsibility can be assigned using detailed job descriptions or in living documents, such as the plan for performing the process. Dynamic assignment of responsibility is another legitimate way to implement this generic practice, as long as the assignment and acceptance of responsibility are ensured throughout the life of the process.', 
		generic_goal_id: 2 }, 
	{ id: 6, name:  "GP 2.5: Train People", 
		summary: 'The purpose of this generic practice is to ensure that people have the necessary skills and expertise to perform or support the process. 

Appropriate training is provided to those who will be performing the work. Overview training is provided to orient people who interact with those who perform the work.

Training supports the successful execution of the process by establishing a common understanding of the process and by imparting the skills and knowledge needed to perform the process.',
		description: "", 
		generic_goal_id: 2 }, 
	{ id: 7, name:  "GP 2.6: Control Work Products", 
		summary: 'Place selected work products of the process under appropriate levels of control.', 
		description: 'The purpose of this generic practice is to establish and maintain the integrity of the selected work products of the process (or their descriptions) throughout their useful life. 

The selected work products are specifically identified in the plan for performing the process, along with a specification of the appropriate level of control. 

Different levels of control are appropriate for different work products and for different points in time. For some work products, it may be sufficient to maintain version control so that the version of the work product in use at a given time, past or present, is known and changes are incorporated in a controlled manner. Version control is usually under the sole control of the work product owner (which can be an individual, group, or team).  

Sometimes, it can be critical that work products be placed under formal or baseline configuration management. This type of control includes defining and establishing baselines at predetermined points. These baselines are formally reviewed and approved, and serve as the basis for further development of the designated work products. 

Refer to the Configuration Management process area for more information about establishing and maintaining the integrity of work products using configuration identification, configuration control, configuration status accounting, and configuration audits. 

Additional levels of control between version control and formal configuration management are possible. An identified work product can be under various levels of control at different points in time.', 
		generic_goal_id: 2 },
	{ id: 8, name:  "GP 2.7: Identify and Involve Relevant Stakeholders", 
		summary: 'Identify and involve the relevant stakeholders of the process as planned.', 
		description: 'The purpose of this generic practice is to establish and maintain the expected involvement of relevant stakeholders during the execution of the process. 

Involve relevant stakeholders as described in an appropriate plan for stakeholder involvement. 

	Involve stakeholders appropriately in activities such as the following: 
		* Planning 
		* Decisions 
		* Commitments 
		* Communications 
		* Coordination 
		* Reviews 
		* Appraisals 
		* Requirements definitions 
		* Resolution of problems and issues

The objective of planning stakeholder involvement is to ensure that interactions necessary to the process are accomplished, while not allowing excessive numbers of affected groups and individuals to impede process execution.', 
		generic_goal_id: 2 }, 
	{ id: 9, name:  "GP 2.8: Monitor and Control the Process", 
		summary: 'Monitor and control the process against the plan for performing the process and take appropriate corrective action.', 
		description: 'The purpose of this generic practice is to perform the direct day-to-day monitoring and controlling of the process. Appropriate visibility into the process is maintained so that appropriate corrective action can be taken when necessary. Monitoring and controlling the process can involve measuring appropriate attributes of the process or work products produced by the process.', 
		generic_goal_id: 2 },
	{ id: 10, name: "GP 2.9: Objectively Evaluate Adherence", 
		summary: 'Objectively evaluate adherence of the process and selected work products against the process description, standards, and procedures, and address noncompliance.', 
		description: 'The purpose of this generic practice is to provide credible assurance that the process and selected work products are implemented as planned and adhere to the process description, standards, and procedures. 

People not directly responsible for managing or performing the activities of the process typically evaluate adherence. In many cases, adherence is evaluated by people in the organization, but external to the process or project, or by people external to the organization. As a result, credible assurance of adherence can be provided even during times when the process is under stress (e.g., when the effort is behind schedule, when the effort is over budget).', 
		generic_goal_id: 2 },
	{ id: 11, name: "GP 2.10: Review Status with Higher Level Management", 
		summary: 'Review the activities, status, and results of the process with higher level management and resolve issues.', 
		description: 'The purpose of this generic practice is to provide higher level management with the appropriate visibility into the process. 

Higher level management includes those levels of management in the organization above the immediate level of management responsible for the process. In particular, higher level management can include senior management. These reviews are for managers who provide the policy and overall guidance for the process and not for those who perform the direct day-to-day monitoring and controlling of the process. 

Different managers have different needs for information about the process. These reviews help ensure that informed decisions on the planning and performing of the process can be made. Therefore, these reviews are expected to be both periodic and event driven.', 
		generic_goal_id: 2 },
	{ id: 12, name: "GP 3.1: Establish a Defined Process", 
		summary: 'Establish and maintain the description of a defined process.', 
		description: 'The purpose of this generic practice is to establish and maintain a description of the process that is tailored from the organization’s set of standard processes to address the needs of a specific instantiation. The organization should have standard processes that cover the process area, as well as have guidelines for tailoring these standard processes to meet the needs of a project or organizational function. With a defined process, variability in how the processes are performed across the organization is reduced and process assets, data, and learning can be effectively shared. 

The descriptions of the defined processes provide the basis for planning, performing, and managing the activities, work products, and services associated with the process.', 
		generic_goal_id: 3 }, 
	{ id: 13, name: "GP 3.2: Collect Process Related Experiences", 
		summary: 'Collect process related experiences derived from planning and performing the process to support the future use and improvement of the organization’s processes and process assets.', 
		description: 'The purpose of this generic practice is to collect process related experiences, including information and artifacts derived from planning and performing the process. Examples of process related experiences include work products, measures, measurement results, lessons learned, and process improvement suggestions. The information and artifacts are collected so that they can be included in the organizational process assets and made available to those who are (or who will be) planning and performing the same or similar processes. The information and artifacts are stored in the organization’s measurement repository and the organization’s process asset library. 

Examples of relevant information include the effort expended for the various activities, defects injected or removed in a particular activity, and lessons learned.', 
		generic_goal_id: 3 }
	])

specific_goal = SpecificGoal.create([
	{ id: 1,  name: "SG 1: Determine Causes of Selected Outcomes", 
		description: "Root causes of selected outcomes are systematically determined.", 
		process_area_id: 21 },
	{ id: 2,  name: "SG 2: Address Causes of Selected Outcomes", 
		description: "Root causes of selected outcomes are systematically addressed.", 
		process_area_id: 21 },
	{ id: 3,  name: "SG 1: Establish Baselines", 
		description: "Baselines of identified work products are established.", 
		process_area_id: 1 },
	{ id: 4,  name: "SG 2: Track and Control Changes", 
		description: "Changes to the work products under configuration management are tracked and controlled.", 
		process_area_id: 1 },
	{ id: 5,  name: "SG 3: Establish Integrity", 
		description: "Integrity of baselines is established and maintained.", 
		process_area_id: 1 },
	{ id: 6,  name: "SG 1: Evaluate Alternatives", 
		description: "Decisions are based on an evaluation of alternatives using established criteria.", 
		process_area_id: 8 },
	{ id: 7,  name: "SG 1: Use the Project’s Defined Process", 
		description: "The project is conducted using a defined process tailored from the organization’s set of standard processes.", 
		process_area_id: 9 },
	{ id: 8,  name: "SG 2: Coordinate and Collaborate with Relevant Stakeholders", 
		description: "Coordination and collaboration between the project and relevant stakeholders are conducted.", 
		process_area_id: 9 },
	{ id: 9,  name: "SG 1: Align Measurement and Analysis Activities", 
		description: "Measurement objectives and activities are aligned with identified information needs and objectives.", 
		process_area_id: 2 }, 
	{ id: 10, name: "SG 2: Provide Measurement Results", 
		description: "Measurement results, which address identified information needs and objectives, are provided.", 
		process_area_id: 2 }, 
	{ id: 11, name: "SG 1: Establish Organizational Process Assets", 
		description: "A set of organizational process assets is established and maintained.", 
		process_area_id: 10 },
	{ id: 12, name: "SG 1: Determine Process Improvement Opportunities", 
		description: "Strengths, weaknesses, and improvement opportunities for the organization’s processes are identified periodically and as needed.", 
		process_area_id: 11 },
	{ id: 13, name: "SG 2: Plan and Implement Process Actions", 
		description: "Process actions that address improvements to the organization’s processes and process assets are planned and implemented.", 
		process_area_id: 11 },
	{ id: 14, name: "SG 3: Deploy Organizational Process Assets and Incorporate Experiences", 
		description: "Organizational process assets are deployed across the organization and process related experiences are incorporated into organizational process assets.", 
		process_area_id: 11 },
	{ id: 15, name: "SG 1: Manage Business Performance", 
		description: "The organization’s business performance is managed using statistical and other quantitative techniques to understand process performance shortfalls, and to identify areas for process improvement.", 
		process_area_id: 22 },
	{ id: 16, name: "SG 2: Select Improvements", 
		description: "Improvements are proactively identified, evaluated using statistical and other quantitative techniques, and selected for deployment based on their contribution to meeting quality and process performance objectives.", 
		process_area_id: 22 },
	{ id: 17, name: "SG 3: Deploy Improvements", 
		description: "Measurable improvements to the organization’s processes and technologies are deployed and evaluated using statistical and other quantitative techniques.", 
		process_area_id: 22 },
	{ id: 18, name: "SG 1: Establish Performance Baselines and Models", 
		description: "Baselines and models, which characterize the expected process performance of the organization’s set of standard processes, are established and maintained.", 
		process_area_id: 19 },
	{ id: 19, name: "SG 1: Establish an Organizational Training Capability", 
		description: "A training capability, which supports the roles in the organization, is established and maintained.", 
		process_area_id: 12 },
	{ id: 20, name: "SG 2: Provide Training", 
		description: "Training for individuals to perform their roles effectively is provided.", 
		process_area_id: 12 },
	{ id: 21, name: "SG 1: Prepare for Product Integration", 
		description: "Preparation for product integration is conducted.", 
		process_area_id: 13 },
	{ id: 22, name: "SG 2: Ensure Interface Compatibility", 
		description: "The product component interfaces, both internal and external, are compatible.", 
		process_area_id: 13 },
	{ id: 23, name: "SG 3: Assemble Product Components and Deliver the Product", 
		description: "Verified product components are assembled and the integrated, verified, and validated product is delivered.", 
		process_area_id: 13 },
	{ id: 24, name: "SG 1: Monitor the Project Against the Plan", 
		description: "Actual project progress and performance are monitored against the project plan.", 
		process_area_id: 3 },
	{ id: 25, name: "SG 2: Manage Corrective Action to Closure", 
		description: "Corrective actions are managed to closure when the project’s performance or results deviate significantly from the plan.", 
		process_area_id: 3 },
	{ id: 26, name: "SG 1: Establish Estimates", 
		description: "Estimates of project planning parameters are established and maintained.", 
		process_area_id: 4 },
	{ id: 27, name: "SG 2: Develop a Project Plan", 
		description: "A project plan is established and maintained as the basis for managing the project.", 
		process_area_id: 4 },
	{ id: 28, name: "SG 3: Obtain Commitment to the Plan", 
		description: "Commitments to the project plan are established and maintained.", 
		process_area_id: 4 },
	{ id: 29, name: "SG 1: Objectively Evaluate Processes and Work Products", 
		description: "Adherence of the performed process and associated work products to applicable process descriptions, standards, and procedures is objectively evaluated.", 
		process_area_id: 5 },
	{ id: 30, name: "SG 2: Provide Objective Insight", 
		description: "Noncompliance issues are objectively tracked and communicated, and resolution is ensured.", 
		process_area_id: 5 },
	{ id: 31, name: "SG 1: Prepare for Quantitative Management", 
		description: "Preparation for quantitative management is conducted.", 
		process_area_id: 5 },
	{ id: 32, name: "SG 2: Quantitatively Manage the Project", 
		description: "Quantitatively managing the project involves the use of statistical and other quantitative techniques to do the following:

		* Monitor the selected subprocesses using statistical and other quantitative techniques
		* Determine whether or not the project’s quality and process performance objectives are being satisfied
		* Perform root cause analysis of selected issues to address deficiencies", 
		process_area_id: 5 },
	{ id: 33, name: "SG 1: Develop Customer Requirements", 
		description: "Stakeholder needs, expectations, constraints, and interfaces are collected and translated into customer requirements.", 
		process_area_id: 14 },
	{ id: 34, name: "SG 2: Develop Product Requirements", 
		description: "Customer requirements are refined and elaborated to develop product and product component requirements.", 
		process_area_id: 14 },
	{ id: 35, name: "SG 3: Analyze and Validate Requirements", 
		description: "The requirements are analyzed and validated.", 
		process_area_id: 14 },
	{ id: 36, name: "SG 1: Manage Requirements", 
		description: "Requirements are managed and inconsistencies with project plans and work products are identified.", 
		process_area_id: 6 },
	{ id: 37, name: "SG 1: Prepare for Risk Management", 
		description: "Preparation for risk management is conducted.", 
		process_area_id: 15 },
	{ id: 38, name: "SG 2: Identify and Analyze Risks", 
		description: "Risks are identified and analyzed to determine their relative importance.", 
		process_area_id: 15 },
	{ id: 39, name: "SG 3: Mitigate Risks", 
		description: "Risks are handled and mitigated as appropriate to reduce adverse impacts on achieving objectives.", 
		process_area_id: 15 },
	{ id: 40, name: "SG 1: Establish Supplier Agreements", 
		description: "Agreements with the suppliers are established and maintained.", 
		process_area_id: 7 },
	{ id: 41, name: "SG 2: Satisfy Supplier Agreements", 
		description: "Agreements with suppliers are satisfied by both the project and the supplier.", 
		process_area_id: 7 },
	{ id: 42, name: "SG 1: Select Product Component Solutions", 
		description: "Product or product component solutions are selected from alternative solutions.", 
		process_area_id: 16 },
	{ id: 43, name: "SG 2: Develop the Design", 
		description: "Product or product component designs are developed.", 
		process_area_id: 16 },
	{ id: 44, name: "SG 3: Implement the Product Design", 
		description: "Product components, and associated support documentation, are implemented from their designs.", 
		process_area_id: 16 },
	{ id: 45, name: "SG 1: Prepare for Validation", 
		description: "Preparation for validation is conducted.", 
		process_area_id: 17 },
	{ id: 46, name: "SG 2: Validate Product or Product Components", 
		description: "The product or product components are validated to ensure they are suitable for use in their intended operating environment.", 
		process_area_id: 17 },
	{ id: 47, name: "SG 1: Prepare for Verification", 
		description: "Preparation for verification is conducted.", 
		process_area_id: 18 },
	{ id: 48, name: "SG 2: Perform Peer Reviews", 
		description: "Peer reviews are performed on selected work products.", 
		process_area_id: 18 },
	{ id: 49, name: "SG 3: Verify Selected Work Products", 
		description: "Selected work products are verified against their specified requirements.", 
		process_area_id: 18 },

	])

specific_practice = SpecificPractice.create([
	{ id: 1,   name: "SP 1.1: Select Outcomes for Analysis", 
		summary: "Select Outcomes for Analysis", 
		description: "This activity could be triggered by an event (reactive) or could be planned periodically, such as at the beginning of a new phase or task (proactive).", 
		specific_goal_id: 1 },
	{ id: 2,   name: "SP 1.2: Analyze Causes", 
		summary: "Perform causal analysis of selected outcomes and propose actions to address them.", 
		description: "The purpose of this analysis is to define actions that will address selected outcomes by analyzing relevant outcome data and producing action proposals for implementation.", 
		specific_goal_id: 1 },
	{ id: 3,   name: "SP 2.1: Implement Action Proposals", 
		summary: "Implement selected action proposals developed in causal analysis.", 
		description: "Action proposals describe tasks necessary to address root causes of analyzed outcomes to prevent or reduce the occurrence or recurrence of negative outcomes, or incorporate realized successes. Action plans are developed and implemented for selected action proposals. Only changes that prove to be of value should be considered for broad implementation.", 
		specific_goal_id: 2 },
	{ id: 4,   name: "SP 2.2: Evaluate the Effect of Implemented Actions", 
		summary: "Evaluate the effect of implemented actions on process performance.", 
		description: "Once the changed process is deployed across the project, the effect of changes is evaluated to verify that the process change has improved process performance.", 
		specific_goal_id: 2 },
	{ id: 5,   name: "SP 2.3: Record Causal Analysis Data", 
		summary: "Record causal analysis and resolution data for use across projects and the organization.", 
		description: "", 
		specific_goal_id: 2 },
	{ id: 6,   name: "SP 1.1: Identify Configuration Items", 
		summary: "Identify configuration items, components, and related work products to be placed under configuration management.", 
		description: "Configuration identification is the selection and specification of the following: 
	* Products delivered to the customer 
	* Designated internal work products 
	* Acquired products 
	* Tools and other capital assets of the project’s work environment 
	* Other items used in creating and describing these work products 
	* Configuration items can include hardware, equipment, and tangible assets as well as software and documentation. Documentation can include requirements specifications and interface documents. Other documents that serve to identify the configuration of the product or service, such as test results, may also be included. 
	* A “configuration item” is an entity designated for configuration management, which may consist of multiple related work products that form a baseline. This logical grouping provides ease of identification and controlled access. The selection of work products for configuration management should be based on criteria established during planning.", 
		specific_goal_id: 3 },
	{ id: 7,   name: "SP 1.2: Establish a Configuration Management System", 
		summary: "Establish and maintain a configuration management and change management system for controlling work products.", 
		description: "A configuration management system includes the storage media, procedures, and tools for accessing the system. A configuration management system can consist of multiple subsystems with different implementations that are appropriate for each configuration management environment. 

A change management system includes the storage media, procedures, and tools for recording and accessing change requests.", 
		specific_goal_id: 3 },
	{ id: 8,   name: "SP 1.3: Create or Release Baselines", 
		summary: "Create or release baselines for internal use and for delivery to the customer.", 
		description: 'A baseline is represented by the assignment of an identifier to a configuration item or a collection of configuration items and associated entities at a distinct point in time. As a product or service evolves, multiple baselines can be used to control development and testing. 

Hardware products as well as software and documentation should also be included in baselines for infrastructure related configurations (e.g., software, hardware) and in preparation for system tests that include interfacing hardware and software. 

One common set of baselines includes the system level requirements, system element level design requirements, and the product definition at the end of development/beginning of production. These baselines are typically referred to respectively as the “functional baseline,” “allocated baseline,” and “product baseline.” A software baseline can be a set of requirements, design, source code files and the associated executable code, build files, and user documentation (associated entities) that have been assigned a unique identifier.', 
		specific_goal_id: 3 },
	{ id: 9,   name: "SP 2.1: Track Change Requests", 
		summary: "Track change requests for configuration items.", 
		description: 'Change requests address not only new or changed requirements but also failures and defects in work products. 

Change requests are analyzed to determine the impact that the change will have on the work product, related work products, the budget, and the schedule.', 
		specific_goal_id: 4 },
	{ id: 10,  name: "SP 2.2: Control Configuration Items", 
		summary: "Control changes to configuration items.", 
		description: 'Control is maintained over the configuration of the work product baseline. This control includes tracking the configuration of each configuration item, approving a new configuration if necessary, and updating the baseline.', 
		specific_goal_id: 4 },
	{ id: 11,  name: "SP 3.1: Establish Configuration Management Records", 
		summary: "Establish and maintain records describing configuration items.", 
		description: '', 
		specific_goal_id: 5 },
	{ id: 12,  name: "SP 3.2: Perform Configuration Audits", 
		summary: "Perform configuration audits to maintain the integrity of configuration baselines.", 
		description: 'Configuration audits confirm that the resulting baselines and documentation conform to a specified standard or requirement. Configuration item related records can exist in multiple databases or configuration management systems. In such instances, configuration audits should extend to these other databases as appropriate to ensure accuracy, consistency, and completeness of configuration item information.', 
		specific_goal_id: 5 },
	{ id: 13,  name: "SP 1.1: Establish Guidelines for Decision Analysis", 
		summary: "Establish and maintain guidelines to determine which issues are subject to a formal evaluation process.", 
		description: 'Not every decision is significant enough to require a formal evaluation process. The choice between the trivial and the truly important is unclear without explicit guidance. Whether a decision is significant or not is dependent on the project and circumstances and is determined by established guidelines.', 
		specific_goal_id: 6 },
	{ id: 14,  name: "SP 1.2: Establish Evaluation Criteria", 
		summary: "Establish and maintain criteria for evaluating alternatives and the relative ranking of these criteria.", 
		description: 'Evaluation criteria provide the basis for evaluating alternative solutions. Criteria are ranked so that the highest ranked criteria exert the most influence on the evaluation. 

This process area is referenced by many other process areas in the model, and many contexts in which a formal evaluation process can be used. Therefore, in some situations you may find that criteria have already been defined as part of another process. This specific practice does not suggest that a second development of criteria be conducted. 

A well-defined statement of the issue to be addressed and the decision to be made focuses the analysis to be performed. Such a statement also aids in defining evaluation criteria that minimize the possibility that decisions will be second guessed or that the reason for making the decision will be forgotten. Decisions based on criteria that are explicitly defined and established remove barriers to stakeholder buy-in.', 
		specific_goal_id: 6 },
	{ id: 15,  name: "SP 1.3: Identify Alternative Solutions", 
		summary: "Identify alternative solutions to address issues.", 
		description: 'A wider range of alternatives can surface by soliciting as many stakeholders as practical for input. Input from stakeholders with diverse skills and backgrounds can help teams identify and address assumptions, constraints, and biases. Brainstorming sessions can stimulate innovative alternatives through rapid interaction and feedback. 

Sufficient candidate solutions may not be furnished for analysis. As the analysis proceeds, other alternatives should be added to the list of potential candidate solutions. The generation and consideration of multiple alternatives early in a decision analysis and resolution process increases the likelihood that an acceptable decision will be made and that consequences of the decision will be understood.', 
		specific_goal_id: 6 },
	{ id: 16,  name: "SP 1.4: Select Evaluation Methods", 
		summary: "Select evaluation methods.", 
		description: 'Methods for evaluating alternative solutions against established criteria can range from simulations to the use of probabilistic models and decision theory. These methods should be carefully selected. The level of detail of a method should be commensurate with cost, schedule, performance, and risk impacts. 

While many problems may require only one evaluation method, some problems may require multiple methods. For example, simulations may augment a trade study to determine which design alternative best meets a given criterion.', 
		specific_goal_id: 6 },
	{ id: 17,  name: "SP 1.5: Evaluate Alternative Solutions", 
		summary: "Evaluate alternative solutions using established criteria and methods.", 
		description: 'Evaluating alternative solutions involves analysis, discussion, and review. Iterative cycles of analysis are sometimes necessary. Supporting analyses, experimentation, prototyping, piloting, or simulations may be needed to substantiate scoring and conclusions. 

Often, the relative importance of criteria is imprecise and the total effect on a solution is not apparent until after the analysis is performed. In cases where the resulting scores differ by relatively small amounts, the best selection among alternative solutions may not be clear. Challenges to criteria and assumptions should be encouraged.', 
		specific_goal_id: 6 },
	{ id: 18,  name: "SP 1.6: Select Solutions", 
		summary: "Select solutions from alternatives based on evaluation criteria.", 
		description: 'Selecting solutions involves weighing results from the evaluation of alternatives. Risks associated with the implementation of solutions should be assessed.', 
		specific_goal_id: 6 },
	{ id: 19,  name: "SP 1.1: Establish the Project’s Defined Process", 
		summary: "Establish and maintain the project’s defined process from project startup through the life of the project.", 
		description: 'The project’s defined process consists of defined processes that form an integrated, coherent lifecycle for the project. 

The project’s defined process should satisfy the project’s contractual requirements, operational needs, opportunities, and constraints. It is designed to provide a best fit for project needs. 

A project’s defined process is based on the following factors: Stakeholder requirements, Commitments, Organizational process needs and objectives, The organization’s set of standard processes and tailoring guidelines, The operational environment, The business environment 

Establishing the project’s defined process at project startup helps to ensure that project staff and relevant stakeholders implement a set of activities needed to efficiently establish an initial set of requirements and plans for the project. As the project progresses, the description of the project’s defined process is elaborated and revised to better meet project requirements and the organization’s process needs and objectives. Also, as the organization’s set of standard processes changes, the project’s defined process may need to be revised.', 
		specific_goal_id: 7 },
	{ id: 20,  name: "SP 1.2: Use Organizational Process Assets for Planning Project Activities", 
		summary: "Use organizational process assets and the measurement repository for estimating and planning project activities.", 
		description: 'When available, use results of previous planning and execution activities as predictors of the relative scope and risk of the effort being estimated.', 
		specific_goal_id: 7 },
	{ id: 21,  name: "SP 1.3: Establish the Project’s Work Environment", 
		summary: "Establish and maintain the project’s work environment based on the organization’s work environment standards.", 
		description: 'An appropriate work environment for a project comprises an infrastructure of facilities, tools, and equipment that people need to perform their jobs effectively in support of business and project objectives. The work environment and its components are maintained at a level of work environment performance and reliability indicated by organizational work environment standards. As required, the project’s work environment or some of its components can be developed internally or acquired from external sources. 

The project’s work environment might encompass environments for product integration, verification, and validation or they might be separate environments.', 
		specific_goal_id: 7 },
	{ id: 22,  name: "SP 1.4: Integrate Plans", 
		summary: "Integrate the project plan and other plans that affect the project to describe the project’s defined process.", 
		description: 'This specific practice extends the specific practices for establishing and maintaining a project plan to address additional planning activities such as incorporating the project’s defined process, coordinating with relevant stakeholders, using organizational process assets, incorporating plans for peer reviews, and establishing objective entry and exit criteria for tasks. 

The development of the project plan should account for current and projected needs, objectives, and requirements of the organization, customer, suppliers, and end users as appropriate.', 
		specific_goal_id: 7 },
	{ id: 23,  name: "SP 1.5: Manage the Project Using Integrated Plans", 
		summary: "Manage the project using the project plan, other plans that affect the project, and the project’s defined process.", 
		description: 'Example Work Products: Work products created by performing the project’s defined process, Collected measures (i.e., actuals) and status records or reports, Revised requirements, plans, and commitments, Integrated plans', 
		specific_goal_id: 7 },
	{ id: 24,  name: "SP 1.6: Establish Teams", 
		summary: "Establish and maintain teams.", 
		description: 'The project is managed using teams that reflect the organizational rules and guidelines for team structuring, formation, and operation. 

The project’s shared vision is established prior to establishing the team structure, which can be based on the WBS. For small organizations, the whole organization and relevant external stakeholders can be treated as a team. 

One of the best ways to ensure coordination and collaboration with relevant stakeholders is to include them on the team. 

In a customer environment that requires coordination among multiple product or service development organizations, it is important to establish a team with representation from all parties that affect overall success. Such representation helps to ensure effective collaboration across these organizations, including the timely resolution of coordination issues.', 
		specific_goal_id: 7 },
	{ id: 25,  name: "SP 1.7: Contribute to Organizational Process Assets", 
		summary: "Contribute process related experiences to organizational process assets.", 
		description: 'This specific practice addresses contributing information from processes in the project’s defined process to organizational process assets. 

Example Work Products: Proposed improvements to organizational process assets, Actual process and product measures collected from the project, Documentation (e.g., exemplary process descriptions, plans, training modules, checklists, lessons learned), Process artifacts associated with tailoring and implementing the organization’s set of standard processes on the project ', 
		specific_goal_id: 7 },
	{ id: 26,  name: "SP 2.1: Manage Stakeholder Involvement", 
		summary: "Manage the involvement of relevant stakeholders in the project.", 
		description: 'Stakeholder involvement is managed according to the project’s integrated plan and defined process. 

	Example Work Products: 
		* Agendas and schedules for collaborative activities 
		* Recommendations for resolving relevant stakeholder issues 
		* Documented issues (e.g., issues with stakeholder requirements, product and product component requirements, product architecture, product design)', 
		specific_goal_id: 8 },
	{ id: 27,  name: "SP 2.2: Manage Dependencies", 
		summary: "Participate with relevant stakeholders to identify, negotiate, and track critical dependencies.", 
		description: 'Example Work Products: Defects, issues, and action items resulting from reviews with relevant stakeholders, Critical dependencies, Commitments to address critical dependencies, Status of critical dependencies', 
		specific_goal_id: 8 },
	{ id: 28,  name: "SP 2.3: Resolve Coordination Issues", 
		summary: "Resolve issues with relevant stakeholders.", 
		description: 'Examples of coordination issues include the following: Product and product component requirements and design defects, Late critical dependencies and commitments, Product level problems, Unavailability of critical resources or staff', 
		specific_goal_id: 8 },
	{ id: 29,  name: "SP 1.1: Establish Measurement Objectives", 
		summary: "Establish and maintain measurement objectives derived from identified information needs and objectives.", 
		description: 'Measurement objectives document the purposes for which measurement and analysis are done and specify the kinds of actions that can be taken based on results of data analyses. Measurement objectives can also identify the change in behavior desired as a result of implementing a measurement and analysis activity. 

Measurement objectives may be constrained by existing processes, available resources, or other measurement considerations. Judgments may need to be made about whether the value of the result is commensurate with resources devoted to doing the work. 

Modifications to identified information needs and objectives can, in turn, be indicated as a consequence of the process and results of measurement and analysis.', 
		specific_goal_id: 9 },
	{ id: 30,  name: "SP 1.2: Specify Measures", 
		summary: "Specify measures to address measurement objectives.", 
		description: 'Measurement objectives are refined into precise, quantifiable measures. 

Measurement of project and organizational work can typically be traced to one or more measurement information categories. These categories include the following: schedule and progress, effort and cost, size and stability, and quality. 

Measures can be either base or derived. Data for base measures are obtained by direct measurement. Data for derived measures come from other data, typically by combining two or more base measures 

Derived measures typically are expressed as ratios, composite indices, or other aggregate summary measures. They are often more quantitatively reliable and meaningfully interpretable than the base measures used to generate them.', 
		specific_goal_id: 9 }, 	
	{ id: 31,  name: "SP 1.3: Specify Data Collection and Storage Procedures", 
		summary: "Specify how measurement data are obtained and stored.", 
		description: 'Explicit specification of collection methods helps to ensure that the right data are collected properly. This specification can also help further clarify information needs and measurement objectives. 

Proper attention to storage and retrieval procedures helps to ensure that data are available and accessible for future use.', 
		specific_goal_id: 9 }, 
	{ id: 32,  name: "SP 1.4: Specify Analysis Procedures", 
		summary: "Specify how measurement data are analyzed and communicated.", 
		description: 'Specifying analysis procedures in advance ensures that appropriate analyses will be conducted and reported to address documented measurement objectives (and thereby the information needs and objectives on which they are based). This approach also provides a check that necessary data will, in fact, be collected. Analysis procedures should account for the quality (e.g., age, reliability) of all data that enter into an analysis (whether from the project, organization’s measurement repository, or other source). The quality of data should be considered to help select the appropriate analysis procedure and evaluate the results of the analysis.', 
		specific_goal_id: 9 },
	{ id: 33,  name: "SP 2.1: Obtain Measurement Data", 
		summary: "Obtain specified measurement data.", 
		description: 'The data necessary for analysis are obtained and checked for completeness and integrity.', 
		specific_goal_id: 10 },
	{ id: 34,  name: "SP 2.2: Analyze Measurement Data", 
		summary: "Analyze and interpret measurement data.", 
		description: 'Measurement data are analyzed as planned, additional analyses are conducted as necessary, results are reviewed with relevant stakeholders, and necessary revisions for future analyses are noted.', 
		specific_goal_id: 10 },
	{ id: 35,  name: "SP 2.3: Store Data and Results", 
		summary: "Manage and store measurement data, measurement specifications, and analysis results.", 
		description: 'Storing measurement related information enables its timely and cost effective use as historical data and results. The information also is needed to provide sufficient context for interpretation of data, measurement criteria, and analysis results. 

Information stored typically includes the following: Measurement plans, Specifications of measures, Sets of data that were collected, Analysis reports and presentations, Retention period for data stored 

Stored information contains or refers to other information needed to understand and interpret the measures and to assess them for reasonableness and applicability (e.g., measurement specifications used on different projects when comparing across projects). 

Typically, data sets for derived measures can be recalculated and need not be stored. However, it may be appropriate to store summaries based on derived measures (e.g., charts, tables of results, report text). 

Interim analysis results need not be stored separately if they can be efficiently reconstructed. 

Projects can choose to store project specific data and results in a project specific repository. When data are shared across projects, the data can reside in the organization’s measurement repository.', 
		specific_goal_id: 10 },
	{ id: 36,  name: "SP 2.4: Communicate Results", 
		summary: "Communicate results of measurement and analysis activities to all relevant stakeholders.", 
		description: 'The results of the measurement and analysis process are communicated to relevant stakeholders in a timely and usable fashion to support decision making and assist in taking corrective action. 

Relevant stakeholders include intended end users, sponsors, data analysts, and data providers. 

	Example Work Products: 
		* Delivered reports and related analysis results 
		* Contextual information or guidance to help interpret analysis results', 
		specific_goal_id: 10 },
	{ id: 37,  name: "SP 1.1: Establish Standard Processes", 
		summary: "Establish and maintain the organization’s set of standard processes.", 
		description: 'Standard processes can be defined at multiple levels in an enterprise and they can be related hierarchically. For example, an enterprise can have a set of standard processes that is tailored by individual organizations (e.g., a division, a site) in the enterprise to establish their set of standard processes. The set of standard processes can also be tailored for each of the organization’s business areas, product lines, or standard services. Thus the organization’s set of standard processes can refer to the standard processes established at the organization level and standard processes that may be established at lower levels, although some organizations may have only one level of standard processes. 

Multiple standard processes may be needed to address the needs of different application domains, lifecycle models, methodologies, and tools. The organization’s set of standard processes contains process elements (e.g., a work product size estimating element) that may be interconnected according to one or more process architectures that describe relationships among process elements. 

The organization’s set of standard processes typically includes technical, management, administrative, support, and organizational processes. 

The organization’s set of standard processes should collectively cover all processes needed by the organization and projects, including those processes addressed by the process areas at maturity level 2.', 
		specific_goal_id: 11 },
	{ id: 38,  name: "SP 1.2: Establish and maintain descriptions of lifecycle models approved for use in the organization.", 
		summary: "Establish and maintain the organization’s set of standard processes.", 
		description: 'Lifecycle models can be developed for a variety of customers or in a variety of situations, since one lifecycle model may not be appropriate for all situations. Lifecycle models are often used to define phases of the project. Also, the organization can define different lifecycle models for each type of product and service it delivers. 

	Example Work Products: 
		* Descriptions of lifecycle models', 
		specific_goal_id: 11 },
	{ id: 39,  name: "SP 1.3: Establish Tailoring Criteria and Guidelines", 
		summary: "Establish and maintain the organization’s set of standard processes.", 
		description: 'Tailoring criteria and guidelines describe the following: 
	* How the organization’s set of standard processes and organizational process assets are used to create defined processes 
	* Requirements that must be satisfied by defined processes (e.g., the subset of organizational process assets that are essential for any defined process) 
	* Options that can be exercised and criteria for selecting among options 
	* Procedures that must be followed in performing and documenting process tailoring 
	* Examples of reasons for tailoring include the following: 
	* Adapting the process to a new product line or work environment 
	* Elaborating the process description so that the resulting defined process can be performed 
	* Customizing the process for an application or class of similar applications 
	* Flexibility in tailoring and defining processes is balanced with ensuring appropriate consistency of processes across the organization. Flexibility is needed to address contextual variables such as the domain; the nature of the customer; cost, schedule, and quality tradeoffs; the technical difficulty of the work; and the experience of the people implementing the process. Consistency across the organization is needed so that organizational standards, objectives, and strategies are appropriately addressed, and process data and lessons learned can be shared. 

Tailoring is a critical activity that allows controlled changes to processes due to the specific needs of a project or a part of the organization. Processes and process elements that are directly related to critical business objectives should usually be defined as mandatory, but processes and process elements that are less critical or only indirectly affect business objectives may allow for more tailoring. 

The amount of tailoring could also depend on the project’s lifecycle model, the use of suppliers, and other factors. 

Tailoring criteria and guidelines can allow for using a standard process “as is,” with no tailoring.', 
		specific_goal_id: 11 },
	{ id: 40,  name: "SP 1.4: Establish the Organization’s Measurement Repository", 
		summary: "Establish and maintain the organization’s measurement repository.", 
		description: 'The repository contains both product and process measures that are related to the organization’s set of standard processes. It also contains or refers to information needed to understand and interpret measures and to assess them for reasonableness and applicability. For example, the definitions of measures are used to compare similar measures from different processes. 
	Example Work Products: 
		* Definition of the common set of product and process measures for the organization’s set of standard processes 
		* Design of the organization’s measurement repository 
		* Organization’s measurement repository (i.e., the repository structure, support environment) 
		* Organization’s measurement data', 
		specific_goal_id: 11 },
	{ id: 41,  name: "SP 1.5: Establish the Organization’s Process Asset Library", 
		summary: "Establish and maintain the organization’s process asset library.", 
		description: 'Examples of items to be stored in the organization’s process asset library include the following: 
	* Organizational policies 
	* Process descriptions 
	* Procedures (e.g., estimating procedure) 
	* Development plans 
	* Acquisition plans 
	* Quality assurance plans 
	* Training materials 
	* Process aids (e.g., checklists) 
	* Lessons learned reports', 
		specific_goal_id: 11 },
	{ id: 42,  name: "SP 1.6: Establish Work Environment Standards", 
		summary: "Establish and maintain work environment standards.", 
		description: 'Work environment standards allow the organization and projects to benefit from common tools, training, and maintenance, as well as cost savings from volume purchases. Work environment standards address the needs of all stakeholders and consider productivity, cost, availability, security, and workplace health, safety, and ergonomic factors. Work environment standards can include guidelines for tailoring and the use of waivers that allow adaptation of the project’s work environment to meet needs. 
	Examples of work environment standards include the following: 
		* Procedures for the operation, safety, and security of the work environment 
		* Standard workstation hardware and software 
		* Standard application software and tailoring guidelines for it 
		* Standard production and calibration equipment, 
		* Process for requesting and approving tailoring or waivers', 
		specific_goal_id: 11 },
	{ id: 43,  name: "SP 1.7: Establish Rules and Guidelines for Teams", 
		summary: "Establish and maintain organizational rules and guidelines for the structure, formation, and operation of teams.", 
		description: 'Operating rules and guidelines for teams define and control how teams are created and how they interact to accomplish objectives. Team members should understand the standards for work and participate according to those standards. 

When establishing rules and guidelines for teams, ensure they comply with all local and national regulations or laws that can affect the use of teams. 

Structuring teams involves defining the number of teams, the type of each team, and how each team relates to the others in the structure. Forming teams involves chartering each team, assigning team members and team leaders, and providing resources to each team to accomplish work.', 
		specific_goal_id: 11 },
	{ id: 44,  name: "SP 1.1: Establish Organizational Process Needs", 
		summary: "Establish and maintain the description of process needs and objectives for the organization.", 
		description: 'The organization’s processes operate in a business context that should be understood. The organization’s business objectives, needs, and constraints determine the needs and objectives for the organization’s processes. Typically, issues related to customer satisfaction, finance, technology, quality, human resources, and marketing are important process considerations. 

	The organization’s process needs and objectives cover aspects that include the following: 
		* Characteristics of processes 
		* Process performance objectives, such as time-to-market and delivered quality 
		* Process effectiveness', 
		specific_goal_id: 12 },
	{ id: 45,  name: "SP 1.2: Appraise the Organization’s Processes", 
		summary: "Appraise the organization’s processes periodically and as needed to maintain an understanding of their strengths and weaknesses.", 
		description: 'Process appraisals can be performed for the following reasons: To identify processes to be improved, To confirm progress and make the benefits of process improvement visible, To satisfy the needs of a customer-supplier relationship, To motivate and facilitate buy-in 

The buy-in gained during a process appraisal can be eroded significantly if it is not followed by an appraisal based action plan.', 
		specific_goal_id: 12 },
	{ id: 46,  name: "SP 1.3: Identify the Organization’s Process Improvements", 
		summary: "Identify improvements to the organization’s processes and process assets.", 
		description: 'Example Work Products: Analysis of candidate process improvements & Identification of improvements for the organization’s processes', 
		specific_goal_id: 12 },
	{ id: 47,  name: "SP 2.1: Establish Process Action Plans", 
		summary: "Establish and maintain process action plans to address improvements to the organization’s processes and process assets.", 
		description: 'Establishing and maintaining process action plans typically involves the following roles: 
	* Management steering committees that set strategies and oversee process improvement activities 
	* Process groups that facilitate and manage process improvement activities
	* Process action teams that define and implement process actions
	* Process owners that manage deployment
	* Practitioners that perform the process
	* Stakeholder involvement helps to obtain buy-in on process improvements and increases the likelihood of effective deployment.
	* Process action plans are detailed implementation plans. These plans differ from the organization’s process improvement plan by targeting improvements that were defined to address weaknesses and that were usually uncovered by appraisals.', 
		specific_goal_id: 13 },
	{ id: 48,  name: "SP 2.2: Implement Process Action Plans", 
		summary: "Implement process action plans.", 
		description: 'Example Work Products: 
	* Commitments among process action teams 
	* Status and results of implementing process action plans 
	* Plans for pilots', 
		specific_goal_id: 13 },
	{ id: 49,  name: "SP 3.1: Deploy Organizational Process Assets", 
		summary: "Deploy organizational process assets across the organization.", 
		description: 'Deploying organizational process assets or changes to them should be performed in an orderly manner. Some organizational process assets or changes to them may not be appropriate for use in some parts of the organization (e.g., because of stakeholder requirements or the current lifecycle phase being implemented). It is therefore important that those who are or will be executing the process, as well as other organization functions (e.g., training, quality assurance), be involved in deployment as necessary. 
	Example Work Products: 
		* Plans for deploying organizational process assets and changes to them across the organization 
		* Training materials for deploying organizational process assets and changes to them 
		* Documentation of changes to organizational process assets 
		* Support materials for deploying organizational process assets and changes to them', 
		specific_goal_id: 14 },
	{ id: 50,  name: "SP 3.2: Deploy Standard Processes", 
		summary: "Deploy the organization’s set of standard processes to projects at their startup and deploy changes to them as appropriate throughout the life of each project.", 
		description: 'It is important that new projects use proven and effective processes to perform critical early activities (e.g., project planning, receiving requirements, obtaining resources). 

Projects should also periodically update their defined processes to incorporate the latest changes made to the organization’s set of standard processes when it will benefit them. This periodic update helps to ensure that all project activities derive the full benefit of what other projects have learned. 

	Example Work Products: 
		* The organization’s list of projects and the status of process deployment on each (i.e., existing and planned projects) 
		* Guidelines for deploying the organization’s set of standard processes on new projects 
		* Records of tailoring and implementing the organization’s set of standard processes', 
		specific_goal_id: 14 },
	{ id: 51,  name: "SP 3.3: Monitor the Implementation", 
		summary: "Monitor the implementation of the organization’s set of standard processes and use of process assets on all projects.", 
		description: 'By monitoring implementation, the organization ensures that the organization’s set of standard processes and other process assets are appropriately deployed to all projects. Monitoring implementation also helps the organization to develop an understanding of the organizational process assets being used and where they are used in the organization. Monitoring also helps to establish a broader context for interpreting and using process and product measures, lessons learned, and improvement information obtained from projects. 
	Example Work Products: 
		* Results of monitoring process implementation on projects 
		* Status and results of process compliance audits 
		* Results of reviewing selected process artifacts created as part of process tailoring and implementation', 
		specific_goal_id: 14 },
	{ id: 52,  name: "SP 3.4: Incorporate Experiences into Organizational Process Assets", 
		summary: "Incorporate process related experiences derived from planning and performing the process into organizational process assets.", 
		description: 'Example Work Products:  
	* Process improvement proposals  
	* Process lessons learned  
	* Measurements of organizational process assets  
	* Improvement recommendations for organizational process assets  
	* Records of the organization’s process improvement activities  
	* Information on organizational process assets and improvements to them', 
		specific_goal_id: 14 },
	{ id: 53,  name: "SP 1.1: Maintain Business Objectives", 
		summary: "Maintain business objectives based on an understanding of business strategies and actual performance results.", 
		description: 'Organizational performance data, characterized by process performance baselines, are used to evaluate whether business objectives are realistic and aligned with business strategies. After business objectives have been revised and prioritized by senior management, quality and process performance objectives may need to be created or maintained and re-communicated. 
	Example Work Products:  
		* Revised business objectives  
		* Revised quality and process performance objectives  
		* Senior management approval of revised business objectives and quality and process performance objectives  
		* Communication of all revised objectives  
		* Updated process performance measures', 
		specific_goal_id: 15 },
	{ id: 54,  name: "SP 1.2: Analyze Process Performance Data", 
		summary: "Analyze process performance data to determine the organization’s ability to meet identified business objectives.", 
		description: 'The data that result from applying the process performance measures, which are defined using Organizational Process Performance processes, are analyzed to create process performance baselines that help in understanding the current capability of the organization. Comparing process performance baselines to quality and process performance objectives helps the organization to determine its ability to meet business objectives. This data typically are collected from project level process performance data to enable organizational analysis. 

	Example Work Products:  
		* Analysis of current capability vs. business objectives  
		* Process performance shortfalls  
		* Risks associated with meeting business objectives', 
		specific_goal_id: 15 },
	{ id: 55,  name: "SP 1.3: Identify Potential Areas for Improvement", 
		summary: "Identify potential areas for improvement that could contribute to meeting business objectives.", 
		description: 'Potential areas for improvement are identified through a proactive analysis to determine areas that could address process performance shortfalls. Causal Analysis and Resolution processes can be used to diagnose and resolve root causes. 

The output from this activity is used to evaluate and prioritize potential improvements, and can result in either incremental or innovative improvement suggestions as described in specific goal 2.', 
		specific_goal_id: 15 },
	{ id: 56,  name: "SP 2.1: Elicit Suggested Improvements", 
		summary: "Elicit and categorize suggested improvements.", 
		description: 'This practice focuses on eliciting suggested improvements and includes categorizing suggested improvements as incremental or innovative. 

Incremental improvements generally originate with those who do the work (i.e., users of the process or technology). Incremental improvements can be simple and inexpensive to implement and deploy. Incremental improvement suggestions are analyzed, but, if selected, may not need rigorous validation or piloting. Innovative improvements such as new or redesigned processes are more transformational than incremental improvements. 

Innovative improvements often arise out of a systematic search for solutions to particular performance issues or opportunities to improve performance. They are identified by those who are trained and experienced with the maturation of particular technologies or whose job it is to track or directly contribute to increased performance. 

Innovations can be found externally by actively monitoring innovations used in other organizations or documented in the research literature. Innovations can also be found by looking internally (e.g., by examining project lessons learned). Innovations are inspired by the need to achieve quality and process performance objectives, the need to improve performance baselines, or the external business environment. 
				
	Examples of incremental improvements include the following:  
		* Adding an item to a peer review checklist.  
		* Combining the technical review and management review for suppliers into a single review.  
		* Introducing an incident workaround.  
		* Substituting a new component.  
		* Making minor updates to a tool.  
		* Examples of innovative improvements typically include additions or major updates to the following:  
		* Computer and related hardware products  
		* Transformational support tools  
		* New or redesigned workflows  
		* Processes or lifecycle models  
		* Interface standards  
		* Reusable components  
		* Management techniques and methodologies  
		* Quality improvement techniques and methodologies  
		* Development techniques and methodologies  
		* Some suggested improvements may be received in the form of a proposal (e.g., an organizational improvement proposal arising from a causal analysis and resolution activity). These suggested improvements will have been analyzed and documented prior to input to Organizational Performance Management processes. When suggested improvements are received as proposals, the proposals are reviewed for completeness and are evaluated as part of the selection process for implementation.  
		* Improvement searches can involve looking outside the organization, deriving innovations from projects using Causal Analysis and Resolution processes, using competitive business intelligence, or analyzing existing organizational performance.', 
		specific_goal_id: 16 },
	{ id: 57,  name: "SP 2.2: Analyze Suggested Improvements", 
		summary: "Analyze suggested improvements for their possible impact on achieving the organization’s quality and process performance objectives.", 
		description: 'Suggested improvements are incremental and innovative improvements that are analyzed and possibly selected for validation, implementation, and deployment throughout the organization. 

	Example Work Products: 
		* Suggested improvement proposals 
		* Selected improvements to be validated', 
		specific_goal_id: 16 },
	{ id: 58,  name: "SP 2.3: Validate Improvements", 
		summary: "Validate selected improvements.", 
		description: 'Selected improvements are validated in accordance with their improvement proposals. 
			
	Examples of validation methods include the following: 
		* Discussions with stakeholders, perhaps in the context of a formal review 
		* Prototype demonstrations 
		* Pilots of suggested improvements 
		* Modeling and simulation 
		* Pilots can be conducted to evaluate significant changes involving untried, high-risk, or innovative improvements before they are broadly deployed. Not all improvements need the rigor of a pilot. Criteria for selecting improvements for piloting are defined and used. Factors such as risk, transformational nature of change, or number of functional areas affected will determine the need for a pilot of the improvement. 
		* Red-lined or rough-draft process documentation can be made available for use in piloting. 
		* Example Work Products: 
		* Validation plans 
		* Validation evaluation reports 
		* Documented lessons learned from validation', 
		specific_goal_id: 16 },
	{ id: 59,  name: "SP 2.4: Select and Implement Improvements for Deployment", 
		summary: "Select and implement improvements for deployment throughout the organization based on an evaluation of costs, benefits, and other factors.", 
		description: 'Selection of suggested improvements for deployment is based on cost-to-benefit ratios with regard to quality and process performance objectives, available resources, and the results of improvement proposal evaluation and validation activities. 

	Example Work Products:  
		* Improvements selected for deployment  
		* Updated process documentation and training', 
		specific_goal_id: 16 },
	{ id: 60,  name: "SP 3.1: Plan the Deployment", 
		summary: "Establish and maintain plans for deploying selected improvements.", 
		description: 'The plans for deploying selected improvements can be included in the plan for organizational performance management, in improvement proposals, or in separate deployment documents. 

		This specific practice complements the Deploy Organizational Process Assets specific practice in the Organizational Process Focus process area and adds the use of quantitative data to guide the deployment and to determine the value of improvements.', 
		specific_goal_id: 17},
	{ id: 61,  name: "SP 3.2: Manage the Deployment", 
		summary: "Manage the deployment of selected improvements.", 
		description: 'This specific practice can overlap with the Implement Action Proposals specific practice in the Causal Analysis and Resolution process area (e.g., when causal analysis and resolution is used organizationally or across multiple projects).', 
		specific_goal_id: 17},
	{ id: 62,  name: "SP 3.3: Evaluate Improvement Effects", 
		summary: "Evaluate the effects of deployed improvements on quality and process performance using statistical and other quantitative techniques.", 
		description: 'This specific practice can overlap with the Evaluate the Effect of Implemented Actions specific practice in the Causal Analysis and Resolution process area (e.g., when causal analysis and resolution is applied organizationally or across multiple projects).', 
		specific_goal_id: 17},
	{ id: 63,  name: "SP 1.1: Establish Quality and Process Performance Objectives", 
		summary: "Establish and maintain the organization’s quantitative objectives for quality and process performance, which are traceable to business objectives.", 
		description: 'The organization’s quality and process performance objectives can be established for different levels in the organizational structure (e.g., business area, product line, function, project) as well as at different levels in the process hierarchy. 

	When establishing quality and process performance objectives, consider the following: 
		* Traceability to the organization’s business objectives 
		* Past performance of the selected processes or subprocesses in context (e.g., on projects) 
		* Multiple attributes of process performance (e.g., product quality, productivity, cycle time, response time) 
		* Inherent variability or natural bounds of the selected processes or subprocesses 
		* The organization’s quality and process performance objectives provide focus and direction to the process performance analysis and quantitative project management activities. However, it should be noted that achieving quality and process performance objectives that are significantly different from current process capability requires use of techniques found in Causal Analysis and Resolution and Organizational Performance Management.', 
		specific_goal_id: 18},
	{ id: 64,  name: "SP 1.2: Select Processes", 
		summary: "Select processes or subprocesses in the organization’s set of standard processes to be included in the organization’s process performance analyses and maintain traceability to business objectives.", 
		description: 'The organization’s set of standard processes consists of a set of standard processes that, in turn, are composed of subprocesses. 

Typically, it is not possible, useful, or economically justifiable to apply statistical management techniques to all processes or subprocesses of the organization’s set of standard processes. Selection of processes or subprocesses is based on the quality and process performance objectives of the organization, which are derived from business objectives as described in the previous specific practice.', 
		specific_goal_id: 18 },
	{ id: 65,  name: "SP 1.3: Establish Process Performance Measures", 
		summary: "Establish and maintain definitions of measures to be included in the organization’s process performance analyses.", 
		description: '', 
		specific_goal_id: 18 },
	{ id: 66,  name: "SP 1.4: Analyze Process Performance and Establish Process Performance Baselines", 
		summary: "Analyze the performance of the selected processes, and establish and maintain the process performance baselines.", 
		description: 'The selected measures are analyzed to characterize the performance of the selected processes or subprocesses achieved on projects. This characterization is used to establish and maintain process performance baselines (See the definition of “process performance baseline” in the glossary.) These baselines are used to determine the expected results of the process or subprocess when used on a project under a given set of circumstances. 

Process performance baselines are compared to the organization’s quality and process performance objectives to determine if the quality and process performance objectives are being achieved. 

The process performance baselines are a measurement of performance for the organization’s set of standard processes at various levels of detail. 

	The processes that the process performance baselines can address include the following: 
		* Sequence of connected processes 
		* Processes that cover the entire life of the project 
		* Processes for developing individual work products 
		* There can be several process performance baselines to characterize performance for subgroups of the organization. 
		* Examples of criteria used to categorize subgroups include the following: 
		* Product line 
		* Line of business 
		* Application domain 
		* Complexity 
		* Team size 
		* Work product size 
		* Process elements from the organization’s set of standard processes 
		* Tailoring the organization’s set of standard processes can significantly affect the comparability of data for inclusion in process performance baselines. Effects of tailoring should be considered in establishing baselines. Depending on the tailoring allowed, separate performance baselines may exist for each type of tailoring.', 
		specific_goal_id: 18 },
	{ id: 67,  name: "SP 1.5: Establish Process Performance Models", 
		summary: "Establish and maintain process performance models for the organization’s set of standard processes.", 
		description: 'High maturity organizations generally establish and maintain a set of process performance models at various levels of detail that cover a range of activities that are common across the organization and address the organization’s quality and process performance objectives. (See the definition of “process performance model” in the glossary.) Under some circumstances, projects may need to create their own process performance models. 

Process performance models are used to estimate or predict the value of a process performance measure from the values of other process, product, and service measurements. These process performance models typically use process and product measurements collected throughout the life of the project to estimate progress toward achieving quality and process performance objectives that cannot be measured until later in the project’s life. 

	Process performance models are used as follows: 
		* The organization uses them for estimating, analyzing, and predicting the process performance associated with processes in and changes to the organization’s set of standard processes. 
		* The organization uses them to assess the (potential) return on investment for process improvement activities. 
		* Projects use them for estimating, analyzing, and predicting the process performance of their defined processes. 
		* Projects use them for selecting processes or subprocesses for use. 
		* Projects use them for estimating progress toward achieving the project’s quality and process performance objectives. 
		* These measures and models are defined to provide insight into and to provide the ability to predict critical process and product characteristics that are relevant to the organization’s quality and process performance objectives. 
		* Examples of process performance models include the following: 
		* System dynamics models 
		* Regression models 
		* Complexity models 
		* Discrete event simulation models 
		* Monte Carlo simulation models', 
		specific_goal_id: 18},
	{ id: 68,  name: "SP 1.1: Establish Strategic Training Needs", 
		summary: "Establish and maintain strategic training needs of the organization.", 
		description: 'Strategic training needs address long-term objectives to build a capability by filling significant knowledge gaps, introducing new technologies, or implementing major changes in behavior. Strategic planning typically looks two to five years into the future. 

	Examples of sources of strategic training needs include the following: 
		* The organization’s standard processes 
		* The organization’s strategic business plan 
		* The organization’s process improvement plan 
		* Enterprise level initiatives 
		* Skill assessments 
		* Risk analyses 
		* Acquisition and supplier management', 
		specific_goal_id: 19},
	{ id: 69,  name: "SP 1.2: Determine Which Training Needs Are the Responsibility of the Organization", 
		summary: "Determine which training needs are the responsibility of the organization and which are left to the individual project or support group.", 
		description: 'In addition to strategic training needs, organizational training addresses training requirements that are common across projects and support groups. Projects and support groups have the primary responsibility for identifying and addressing their training needs. The organization’s training staff is responsible for addressing only common cross-project and support group training needs (e.g., training in work environments common to multiple projects). In some cases, however, the organization’s training staff may address additional training needs of projects and support groups, as negotiated with them, in the context of the training resources available and the organization’s training priorities.', 
		specific_goal_id: 19},
	{ id: 70,  name: "SP 1.3: Establish an Organizational Training Tactical Plan", 
		summary: "Establish and maintain an organizational training tactical plan.", 
		description: 'The organizational training tactical plan is the plan to deliver the training that is the responsibility of the organization and is necessary for individuals to perform their roles effectively. This plan addresses the near-term execution of training and is adjusted periodically in response to changes (e.g., in needs, in resources) and to evaluations of effectiveness.', 
		specific_goal_id: 19},
	{ id: 71,  name: "SP 1.4: Establish a Training Capability", 
		summary: "Establish and maintain a training capability to address organizational training needs.", 
		description: '', 
		specific_goal_id: 19},
	{ id: 72,  name: "SP 2.1: Deliver Training", 
		summary: "Deliver training following the organizational training tactical plan.", 
		description: '', 
		specific_goal_id: 20 },
	{ id: 73,  name: "SP 2.2: Establish Training Records", 
		summary: "Establish and maintain records of organizational training.", 
		description: 'This practice applies to the training performed at the organizational level. Establishment and maintenance of training records for project or support group sponsored training is the responsibility of each individual project or support group.', 
		specific_goal_id: 20 },
	{ id: 74,  name: "SP 2.3: Assess Training Effectiveness", 
		summary: "Assess the effectiveness of the organization’s training program.", 
		description: 'A process should exist to determine the effectiveness of training (i.e., how well training is meeting the organization’s needs). 

	Examples of methods used to assess training effectiveness include the following:  
		* Testing in the training context  
		* Post-training surveys of training participants  
		* Surveys of manager satisfaction with post-training effects  
		* Assessment mechanisms embedded in courseware', 
		specific_goal_id: 20 },
	{ id: 75,  name: "SP 1.1: Establish an Integration Strategy", 
		summary: "Establish and maintain a product integration strategy.", 
		description: 'The product integration strategy describes the approach for receiving, assembling, and evaluating the product components that comprise the product. 

	A product integration strategy addresses items such as the following: 
		* Making product components available for integration (e.g., in what sequence) 
		* Assembling and evaluating as a single build or as a progression of incremental builds 
		* Including and testing features in each iteration when using iterative development 
		* Managing interfaces 
		* Using models, prototypes, and simulations to assist in evaluating an assembly, including its interfaces 
		* Establishing the product integration environment 
		* Defining procedures and criteria 
		* Making available the appropriate test tools and equipment 
		* Managing product hierarchy, architecture, and complexity 
		* Recording results of evaluations 
		* Handling exceptions 
		* The integration strategy should also be aligned with the technical approach described in the Project Planning process area and harmonized with the selection of solutions and the design of product and product components in the Technical Solution process area. 
		* The results of developing a product integration strategy are typically documented in a product integration plan, which is reviewed with stakeholders to promote commitment and understanding. Some of the items addressed in a product integration strategy are covered in more detail in the other specific practices and generic practices of this process area (e.g., environment, procedures and criteria, training, roles and responsibilities, involvement of relevant stakeholders).', 
		specific_goal_id: 21 },
	{ id: 76,  name: "SP 1.2: Establish the Product Integration Environment", 
		summary: "Establish and maintain the environment needed to support the integration of the product components.", 
		description: 'The environment for product integration can either be acquired or developed. To establish an environment, requirements for the purchase or development of equipment, software, or other resources will need to be developed. These requirements are gathered when implementing the processes associated with the Requirements Development process area. The product integration environment can include the reuse of existing organizational resources. The decision to acquire or develop the product integration environment is addressed in the processes associated with the Technical Solution process area. 

	The environment required at each step of the product integration process can include test equipment, simulators (taking the place of unavailable product components), pieces of real equipment, and recording devices.', 
		specific_goal_id: 21 },
	{ id: 77,  name: "SP 1.3: Establish Product Integration Procedures and Criteria", 
		summary: "Establish and maintain procedures and criteria for integration of the product components.", 
		description: 'Procedures for the integration of the product components can include such things as the number of incremental iterations to be performed and details of the expected tests and other evaluations to be carried out at each stage. 

Criteria can indicate the readiness of a product component for integration or its acceptability. 

	Procedures and criteria for product integration address the following: 
		* Level of testing for build components 
		* Verification of interfaces 
		* Thresholds of performance deviation 
		* Derived requirements for the assembly and its external interfaces 
		* Allowable substitutions of components 
		* Testing environment parameters 
		* Limits on cost of testing 
		* Quality/cost tradeoffs for integration operations 
		* Probability of proper functioning 
		* Delivery rate and its variation 
		* Lead time from order to delivery 
		* Staff member availability 
		* Availability of the integration facility/line/environment 
		* Criteria can be defined for how the product components are to be verified and the behaviors (functionality and quality attributes) they are expected to have. Criteria can be defined for how the assembled product components and final integrated product are to be validated and delivered. 
		* Criteria can also constrain the degree of simulation permitted for a product component to pass a test, or can constrain the environment to be used for the integration test. 
		* Pertinent parts of the schedule and criteria for assembly should be shared with suppliers of work products to reduce the occurrence of delays and component failure.', 
		specific_goal_id: 21 },
	{ id: 78,  name: "SP 2.1: Review Interface Descriptions for Completeness", 
		summary: "Review interface descriptions for coverage and completeness.", 
		description: 'The interfaces should include, in addition to product component interfaces, all the interfaces with the product integration environment.', 
		specific_goal_id: 22 },
	{ id: 79,  name: "SP 2.2: Manage Interfaces", 
		summary: "Manage internal and external interface definitions, designs, and changes for products and product components.", 
		description: 'Interface requirements drive the development of the interfaces necessary to integrate product components. Managing product and product component interfaces starts early in the development of the product. The definitions and designs for interfaces affect not only the product components and external systems, but can also affect the verification and validation environments. 

Management of the interfaces includes maintenance of the consistency of the interfaces throughout the life of the product, compliance with architectural decisions and constraints, and resolution of conflict, noncompliance, and change issues. The management of interfaces between products acquired from suppliers and other products or product components is critical for success of the project. 

The interfaces should include, in addition to product component interfaces, all the interfaces with the environment as well as other environments for verification, validation, operations, and support. 

The interface changes are documented, maintained, and readily accessible.', 
		specific_goal_id: 22 },
	{ id: 80,  name: "SP 3.1: Confirm Readiness of Product Components for Integration", 
		summary: "Confirm, prior to assembly, that each product component required to assemble the product has been properly identified, behaves according to its description, and that the product component interfaces comply with the interface descriptions.", 
		description: 'The purpose of this specific practice is to ensure that the properly identified product component that meets its description can actually be assembled according to the product integration strategy and procedures. The product components are checked for quantity, obvious damage, and consistency between the product component and interface descriptions. 

Those who conduct product integration are ultimately responsible for checking to make sure everything is proper with the product components before assembly.', 
		specific_goal_id: 23 },
	{ id: 81,  name: "SP 3.2: Assemble Product Components", 
		summary: "Assemble product components according to the product integration strategy and procedures.", 
		description: 'The assembly activities of this specific practice and the evaluation activities of the next specific practice are conducted iteratively, from the initial product components, through the interim assemblies of product components, to the product as a whole.', 
		specific_goal_id: 23 },
	{ id: 82,  name: "SP 3.3: Evaluate Assembled Product Components", 
		summary: "Evaluate assembled product components for interface compatibility.", 
		description: 'This evaluation involves examining and testing assembled product components for performance, suitability, or readiness using the product integration procedures, criteria, and environment. It is performed as appropriate for different stages of assembly of product components as identified in the product integration strategy and procedures. The product integration strategy and procedures can define a more refined integration and evaluation sequence than might be envisioned just by examining the product hierarchy or architecture. For example, if an assembly of product components is composed of four less complex product components, the integration strategy will not necessarily call for the simultaneous integration and evaluation of the four units as one. Rather, the four less complex units can be integrated progressively, one at a time, with an evaluation after each assembly operation prior to realizing the more complex product component that matched the specification in the product architecture. Alternatively, the product integration strategy and procedures could have determined that only a final evaluation was the best one to perform.', 
		specific_goal_id: 23 },
	{ id: 83,  name: "SP 3.4: Package and Deliver the Product or Product Component", 
		summary: "Package the assembled product or product component and deliver it to the customer.", 
		description: 'The packaging requirements for some products can be addressed in their specifications and verification criteria. This handling of requirements is especially important when items are stored and transported by the customer. In such cases, there can be a spectrum of environmental and stress conditions specified for the package. 

	In other circumstances, factors such as the following can become important: 
		* Economy and ease of transportation (e.g., containerization) 
		* Accountability (e.g., shrink wrapping) 
		* Ease and safety of unpacking (e.g., sharp edges, strength of binding methods, childproofing, environmental friendliness of packing material, weight) 
		* The adjustment required to fit product components together in the factory could be different from the one required to fit product components together when installed on the operational site. In that case, the product’s logbook for the customer should be used to record such specific parameters.', 
		specific_goal_id: 23 },
	{ id: 84,  name: "SP 1.1: Monitor Project Planning Parameters", 
		summary: "Monitor actual values of project planning parameters against the project plan.", 
		description: 'Project planning parameters constitute typical indicators of project progress and performance and include attributes of work products and tasks, costs, effort, and schedule. Attributes of the work products and tasks include size, complexity, service level, availability, weight, form, fit, and function. The frequency of monitoring parameters should be considered. 

Monitoring typically involves measuring actual values of project planning parameters, comparing actual values to estimates in the plan, and identifying significant deviations. Recording actual values of project planning parameters includes recording associated contextual information to help understand measures. An analysis of the impact that significant deviations have on determining the corrective actions to take is handled in specific goal 2 and its specific practices in this process area.', 
		specific_goal_id: 24 },
	{ id: 85,  name: "SP 1.2: Monitor Commitments", 
		summary: "Monitor commitments against those identified in the project plan.", 
		description: '', 
		specific_goal_id: 24 },
	{ id: 86,  name: "SP 1.3: Monitor Project Risks", 
		summary: "Monitor risks against those identified in the project plan.", 
		description: '', 
		specific_goal_id: 24 },
	{ id: 87,  name: "SP 1.4: Monitor Data Management", 
		summary: "Monitor the management of project data against the project plan.", 
		description: 'Data management activities should be monitored to ensure that data management requirements are being satisfied. Depending on the results of monitoring and changes in project requirements, situation, or status, it may be necessary to re-plan the project’s data management activities.', 
		specific_goal_id: 24 },
	{ id: 88,  name: "SP 1.5: Monitor Stakeholder Involvement", 
		summary: "Monitor stakeholder involvement against the project plan.", 
		description: 'Stakeholder involvement should be monitored to ensure that appropriate interactions occur. Depending on the results of monitoring and changes in project requirements, situation, or status, it may be necessary to re-plan stakeholder involvement. 

	In Agile environments, the sustained involvement of customer and potential end users in the project’s product development activities can be crucial to project success; thus, customer and end-user involvement in project activities should be monitored.', 
		specific_goal_id: 24 },
	{ id: 89,  name: "SP 1.6: Conduct Progress Reviews", 
		summary: "Periodically review the project’s progress, performance, and issues.", 
		description: 'A “project’s progress” is the project’s status as viewed at a particular time when the project activities performed so far and their results and impacts are reviewed with relevant stakeholders (especially project representatives and project management) to determine whether there are significant issues or performance shortfalls to be addressed. 

Progress reviews are project reviews to keep relevant stakeholders informed. These project reviews can be informal and may not be specified explicitly in project plans.', 
		specific_goal_id: 24 },
	{ id: 90,  name: "SP 1.7: Conduct Milestone Reviews", 
		summary: "Review the project’s accomplishments and results at selected project milestones.", 
		description: 'Milestones are pre-planned events or points in time at which a thorough review of status is conducted to understand how well stakeholder requirements are being met. (If the project includes a developmental milestone, then the review is conducted to ensure that the assumptions and requirements associated with that milestone are being met.) Milestones can be associated with the overall project or a particular service type or instance. Milestones can thus be event based or calendar based. 

Milestone reviews are planned during project planning and are typically formal reviews. 

Progress reviews and milestone reviews need not be held separately. A single review can address the intent of both. For example, a single pre-planned review can evaluate progress, issues, and performance up through a planned time period (or milestone) against the plan’s expectations.  

Depending on the project, “project startup” and “project close-out” could be phases covered by milestone reviews.', 
		specific_goal_id: 24 },
	{ id: 91,  name: "SP 2.1: Analyze Issues", 
		summary: "Collect and analyze issues and determine corrective actions to address them.", 
		description: '', 
		specific_goal_id: 25 },
	{ id: 92,  name: "SP 2.2: Take Corrective Action", 
		summary: "Take corrective action on identified issues.", 
		description: '', 
		specific_goal_id: 25 },
	{ id: 93,  name: "SP 2.3: Manage Corrective Actions", 
		summary: "Manage corrective actions to closure.", 
		description: '', 
		specific_goal_id: 25 },
	{ id: 94,  name: "SP 1.1: Estimate the Scope of the Project", 
		summary: "Establish a top-level work breakdown structure (WBS) to estimate the scope of the project.", 
		description: 'The WBS evolves with the project. A top-level WBS can serve to structure initial estimating. The development of a WBS divides the overall project into an interconnected set of manageable components. 

Typically, the WBS is a product, work product, or task oriented structure that provides a scheme for identifying and organizing the logical units of work to be managed, which are called “work packages.” The WBS provides a reference and organizational mechanism for assigning effort, schedule, and responsibility and is used as the underlying framework to plan, organize, and control the work done on the project. 

Some projects use the term “contract WBS” to refer to the portion of the WBS placed under contract (possibly the entire WBS). Not all projects have a contract WBS (e.g., internally funded development).', 
		specific_goal_id: 26 },
	{ id: 95,  name: "SP 1.2: Establish Estimates of Work Product and Task Attributes", 
		summary: "Establish and maintain estimates of work product and task attributes.", 
		description: 'Size is the primary input to many models used to estimate effort, cost, and schedule. Models can also be based on other attributes such as service level, connectivity, complexity, availability, and structure. 

	Examples of attributes to estimate include the following: 
		* Number and complexity of requirements 
		* Number and complexity of interfaces 
		* Volume of data 
		* Number of functions 
		* Function points 
		* Source lines of code 
		* Number of classes and objects 
		* Number of database tables 
		* Number of fields in data tables 
		* Architecture elements 
		* Experience of project participants 
		* Amount of code to be reused versus created 
		* Team velocity and complexity 
		* Number of pages 
		* Number of inputs and outputs 
		* Number of technical risk items 
		* Number of database tables 
		* Number of fields in data tables 
		* Architecture elements 
		* Experience of project participants 
		* Amount of code to be reused versus created 
		* Number of logic gates for integrated circuits 
		* Number of parts (e.g., printed circuit boards, components, mechanical parts) 
		* Physical constraints (e.g., weight, volume) 
		* Geographic dispersal of project members 
		* Proximity of customers, end users, and suppliers 
		* How agreeable or difficult the customer is 
		* Quality and “cleanliness” of the existing code base 
		* The estimates should be consistent with project requirements to determine the project’s effort, cost, and schedule. A relative level of difficulty or complexity should be assigned for each size attribute.', 
		specific_goal_id: 26 },
	{ id: 96,  name: "SP 1.3: Define Project Lifecycle Phases", 
		summary: "Define project lifecycle phases on which to scope the planning effort.", 
		description: 'The determination of a project’s lifecycle phases provides for planned periods of evaluation and decision making. These periods are normally defined to support logical decision points at which the appropriateness of continued reliance on the project plan and strategy is determined and significant commitments are made concerning resources. Such points provide planned events at which project course corrections and determinations of future scope and cost can be made. 

Understanding the project lifecycle is crucial in determining the scope of the planning effort and the timing of initial planning, as well as the timing and criteria (critical milestones) for replanning. 

The project lifecycle phases need to be defined depending on the scope of requirements, the estimates for project resources, and the nature of the project. Larger projects can contain multiple phases, such as concept exploration, development, production, operations, and disposal. Within these phases, subphases may be needed. A development phase can include subphases such as requirements analysis, design, fabrication, integration, and verification. The determination of project phases typically includes selection and refinement of one or more development models to address interdependencies and appropriate sequencing of the activities in the phases. 

Depending on the strategy for development, there can be intermediate phases for the creation of prototypes, increments of capability, or spiral model cycles. In addition, explicit phases for “project startup” and “project close-out” can be included.', 
		specific_goal_id: 26 },
	{ id: 97,  name: "SP 1.4: Estimate Effort and Cost", 
		summary: "Estimate the project’s effort and cost for work products and tasks based on estimation rationale.", 
		description: 'Estimates of effort and cost are generally based on results of analysis using models or historical data applied to size, activities, and other planning parameters. Confidence in these estimates is based on rationale for the selected model and the nature of the data. There can be occasions when available historical data do not apply, such as when efforts are unprecedented or when the type of task does not fit available models. For example, an effort can be considered unprecedented if the organization has no experience with such a product or task. 

Unprecedented efforts are more risky, require more research to develop reasonable bases of estimate, and require more management reserve. The uniqueness of the project should be documented when using these models to ensure a common understanding of any assumptions made in the initial planning phases.', 
		specific_goal_id: 26 },
	{ id: 98,  name: "SP 2.1: Establish the Budget and Schedule", 
		summary: "Establish and maintain the project’s budget and schedule.", 
		description: 'The project’s budget and schedule are based on developed estimates and ensure that budget allocation, task complexity, and task dependencies are appropriately addressed. 

Event driven, resource-limited schedules have proven to be effective in dealing with project risk. Identifying accomplishments to be demonstrated before initiation of an event provides some flexibility in the timing of the event, a common understanding of what is expected, a better vision of the state of the project, and a more accurate status of the project’s tasks.', 
		specific_goal_id: 27 },
	{ id: 99,  name: "SP 2.2: Identify Project Risks", 
		summary: "Identify and analyze project risks.", 
		description: 'Risks are identified or discovered and analyzed to support project planning. This specific practice should be extended to all plans that affect the project to ensure that appropriate interfacing is taking place among all relevant stakeholders on identified risks. 

	Project planning risk identification and analysis typically include the following:  
		* Identifying risks  
		* Analyzing risks to determine the impact, probability of occurrence, and time frame in which problems are likely to occur  
		* Prioritizing risks', 
		specific_goal_id: 27 },
	{ id: 100, name: "SP 2.3: Plan Data Management", 
		summary: "Plan for the management of project data.", 
		description: 'Data are forms of documentation required to support a project in all of its areas (e.g., administration, engineering, configuration management, finance, logistics, quality, safety, manufacturing, procurement). The data can take any form (e.g., reports, manuals, notebooks, charts, drawings, specifications, files, correspondence). The data can exist in any medium (e.g., printed or drawn on various materials, photographs, electronic, multimedia). 

Data can be deliverable (e.g., items identified by a project’s contract data requirements) or data can be nondeliverable (e.g., informal data, trade studies, analyses, internal meeting minutes, internal design review documentation, lessons learned, action items). Distribution can take many forms, including electronic transmission. 

Data requirements for the project should be established for both data items to be created and their content and form, based on a common or standard set of data requirements. Uniform content and format requirements for data items facilitate understanding of data content and help with consistent management of data resources. 

The reason for collecting each document should be clear. This task includes the analysis and verification of project deliverables and nondeliverables, data requirements, and customer supplied data. Often, data are collected with no clear understanding of how they will be used. Data are costly and should be collected only when needed.', 
		specific_goal_id: 27 },
	{ id: 101, name: "SP 2.4: Plan the Project’s Resources", 
		summary: "Plan for resources to perform the project.", 
		description: 'Defining project resources (e.g., labor, equipment, materials, methods) and quantities needed to perform project activities builds on initial estimates and provides additional information that can be applied to expand the WBS used to manage the project. 

The top-level WBS developed earlier as an estimation mechanism is typically expanded by decomposing these top levels into work packages that represent single work units that can be separately assigned, performed, and tracked. This subdivision is done to distribute management responsibility and provide better management control. 

Each work package in the WBS should be assigned a unique identifier (e.g., number) to permit tracking. A WBS can be based on requirements, activities, work products, services, or a combination of these items. A dictionary that describes the work for each work package in the WBS should accompany the work breakdown structure.', 
		specific_goal_id: 27 },
	{ id: 102, name: "SP 2.5: Plan Needed Knowledge and Skills", 
		summary: "Plan for knowledge and skills needed to perform the project.", 
		description: 'Knowledge delivery to projects involves training project staff and acquiring knowledge from outside sources. 

Staffing requirements are dependent on the knowledge and skills available to support the execution of the project.', 
		specific_goal_id: 27 },
	{ id: 103, name: "SP 2.6: Plan Stakeholder Involvement", 
		summary: "Plan the involvement of identified stakeholders.", 
		description: 'Stakeholders are identified from all phases of the project lifecycle by identifying the people and functions that should be represented in the project and describing their relevance and the degree of interaction for project activities. A two-dimensional matrix with stakeholders along one axis and project activities along the other axis is a convenient format for accomplishing this identification. Relevance of the stakeholder to the activity in a particular project phase and the amount of interaction expected would be shown at the intersection of the project phase activity axis and the stakeholder axis. 

For inputs of stakeholders to be useful, careful selection of relevant stakeholders is necessary. For each major activity, identify stakeholders who are affected by the activity and those who have expertise that is needed to conduct the activity. This list of relevant stakeholders will probably change as the project moves through phases of the project lifecycle. It is important, however, to ensure that relevant stakeholders in the latter phases of the lifecycle have early input to requirements and design decisions that affect them. 

	Examples of the type of material that should be included in a plan for stakeholder interaction include the following: 
		* List of all relevant stakeholders 
		* Rationale for stakeholder involvement 
		* Relationships among stakeholders 
		* Resources (e.g., training, materials, time, funding) needed to ensure stakeholder interaction 
		* Schedule for the phasing of stakeholder interaction 
		* Roles and responsibilities of relevant stakeholders with respect to the project, by project lifecycle phase 
		* Relative importance of the stakeholder to the success of the project, by project lifecycle phase 
		* Implementing this specific practice relies on shared or exchanged information with the previous Plan Needed Knowledge and Skills specific practice.', 
		specific_goal_id: 27 },
	{ id: 104, name: "SP 2.7: Establish the Project Plan", 
		summary: "Establish and maintain the overall project plan.", 
		description: 'A documented plan that addresses all relevant planning items is necessary to achieve the mutual understanding and commitment of individuals, groups, and organizations that execute or support the plans. 

	The plan generated for the project defines all aspects of the effort, tying together the following in a logical manner: 
		* Project lifecycle considerations 
		* Project tasks 
		* Budgets and schedules 
		* Milestones 
		* Data management 
		* Risk identification 
		* Resource and skill requirements 
		* Stakeholder identification and interaction 
		* Infrastructure considerations 
		* Infrastructure considerations include responsibility and authority relationships for project staff, management, and support organizations. 
		* Lifecycle considerations can include coverage of later phases of the product or service life (that might be beyond the life of the project), especially transition to another phase or party (e.g., transition to manufacturing, training, operations, a service provider). 
		* For software, the planning document is often referred to as one of the following: 
		* Software development plan 
		* Software project plan 
		* Software plan 
		* For hardware, the planning document is often referred to as a hardware development plan. Development activities in preparation for production can be included in the hardware development plan or defined in a separate production plan. 
		* Examples of plans that have been used in the U.S. Department of Defense community include the following: 
		* Integrated Master Plan—an event driven plan that documents significant accomplishments with pass/fail criteria for both business and technical elements of the project and that ties each accomplishment to a key project event. 
		* Integrated Master Schedule—an integrated and networked multi-layered schedule of project tasks required to complete the work effort documented in a related Integrated Master Plan. 
		* Systems Engineering Management Plan—a plan that details the integrated technical effort across the project. 
		* Systems Engineering Master Schedule—an event based schedule that contains a compilation of key technical accomplishments, each with measurable criteria, requiring successful completion to pass identified events. 
		* Systems Engineering Detailed Schedule—a detailed, time dependent, task oriented schedule that associates dates and milestones with the Systems Engineering Master Schedule.', 
		specific_goal_id: 27 },
	{ id: 105, name: "SP 3.1: Review Plans That Affect the Project", 
		summary: "Review all plans that affect the project to understand project commitments.", 
		description: 'Plans developed in other process areas typically contain information similar to that called for in the overall project plan. These plans can provide additional detailed guidance and should be compatible with and support the overall project plan to indicate who has the authority, responsibility, accountability, and control. All plans that affect the project should be reviewed to ensure they contain a common understanding of the scope, objectives, roles, and relationships that are required for the project to be successful. Many of these plans are described by the Plan the Process generic practice.', 
		specific_goal_id: 28 },
	{ id: 106, name: "SP 3.2: Reconcile Work and Resource Levels", 
		summary: "Adjust the project plan to reconcile available and estimated resources.", 
		description: 'To establish a project that is feasible, obtain commitment from relevant stakeholders and reconcile differences between estimates and available resources. Reconciliation is typically accomplished by modifying or deferring requirements, negotiating more resources, finding ways to increase productivity, outsourcing, adjusting the staff skill mix, or revising all plans that affect the project or its schedules.', 
		specific_goal_id: 28 },
	{ id: 107, name: "SP 3.3: Obtain Plan Commitment", 
		summary: "Obtain commitment from relevant stakeholders responsible for performing and supporting plan execution.", 
		description: 'Obtaining commitment involves interaction among all relevant stakeholders, both internal and external to the project. The individual or group making a commitment should have confidence that the work can be performed within cost, schedule, and performance constraints. Often, a provisional commitment is adequate to allow the effort to begin and to permit research to be performed to increase confidence to the appropriate level needed to obtain a full commitment.', 
		specific_goal_id: 28 },
	{ id: 108, name: "SP 1.1: Objectively Evaluate Processes", 
		summary: "Objectively evaluate selected performed processes against applicable process descriptions, standards, and procedures.", 
		description: 'Objectivity in quality assurance evaluations is critical to the success of the project. A description of the quality assurance reporting chain and how it ensures objectivity should be defined.', 
		specific_goal_id: 29 },
	{ id: 109, name: "SP 1.2: Objectively Evaluate Work Products", 
		summary: "Objectively evaluate selected work products against applicable process descriptions, standards, and procedures", 
		description: '', 
		specific_goal_id: 29 },
	{ id: 110, name: "SP 2.1: Communicate and Resolve Noncompliance Issues", 
		summary: "Communicate quality issues and ensure the resolution of noncompliance issues with the staff and managers.", 
		description: 'Noncompliance issues are problems identified in evaluations that reflect a lack of adherence to applicable standards, process descriptions, or procedures. The status of noncompliance issues provides an indication of quality trends. Quality issues include noncompliance issues and trend analysis results. 

When noncompliance issues cannot be resolved in the project, use established escalation mechanisms to ensure that the appropriate level of management can resolve the issue. Track noncompliance issues to resolution.', 
		specific_goal_id: 30 },
	{ id: 111, name: "SP 2.2: Establish Records", 
		summary: "Establish and maintain records of quality assurance activities.", 
		description: '', 
		specific_goal_id: 30 },
	{ id: 112, name: "SP 1.1: Establish the Project’s Objectives", 
		summary: "Establish and maintain the project’s quality and process performance objectives.", 
		description: 'When establishing the project’s quality and process performance objectives, think about the processes that will be included in the project’s defined process and what the historical data indicate regarding their process performance. These considerations, along with others such as technical capability, will help in establishing realistic objectives for the project. 

The project’s objectives for quality and process performance are established and negotiated at an appropriate level of detail (e.g., for individual product components, subprocesses, project teams) to permit an overall evaluation of the objectives and risks at the project level. As the project progresses, project objectives can be updated as the project’s actual performance becomes known and more predictable, and to reflect changing needs and priorities of relevant stakeholders.', 
		specific_goal_id: 31 },
	{ id: 113, name: "SP 1.2: Compose the Defined Process", 
		summary: "Using statistical and other quantitative techniques, compose a defined process that enables the project to achieve its quality and process performance objectives.", 
		description: 'Composing the project’s defined process goes beyond the process selection and tailoring described in the Integrated Project Management process area. It involves identifying alternatives to one or more processes or subprocesses, performing quantitative analysis of performance and selecting the alternatives that are best able to help the project to achieve its quality and process performance objectives.',
	 	specific_goal_id: 31 },
	{ id: 114, name: "SP 1.3: Select Subprocesses and Attributes", 
		summary: "Select subprocesses and attributes critical to evaluating performance and that help to achieve the project’s quality and process performance objectives.", 
		description: 'Some subprocesses are critical because their performance significantly influences or contributes to achieving the project’s objectives. These subprocesses may be good candidates for monitoring and control using statistical and other quantitative techniques as described in the first specific practice of the second specific goal.

Also, some attributes of these subprocesses can serve as leading indicators of the process performance to expect of subprocesses that are further downstream and can be used to assess the risk of not achieving the project’s objectives (e.g., by using process performance models).

Subprocesses and attributes that play such critical roles may have already been identified as part of the analyses described in the previous specific practice.

For small projects, and other circumstances in which subprocess data may not be generated frequently enough in the project to support a sufficiently sensitive statistical inference, it may still be possible to understand performance by examining process performance across similar iterations, teams, or projects.',
	 	specific_goal_id: 31 },
	{ id: 115, name: "SP 1.4: Select Measures and Analytic Techniques", 
		summary: "Select measures and analytic techniques to be used in quantitative management.", 
		description: '',
	 	specific_goal_id: 31 },
	{ id: 116, name: "SP 2.1: Monitor the Performance of Selected Subprocesses", 
		summary: "Monitor the performance of selected subprocesses using statistical and other quantitative techniques.", 
		description: 'The intent of this specific practice is to use statistical and other quantitative techniques to analyze variation in subprocess performance and to determine actions necessary to achieve each subprocess’s quality and process performance objectives.',
	 	specific_goal_id: 32 },
	{ id: 117, name: "SP 2.2: Manage Project Performance", 
		summary: "Manage the project using statistical and other quantitative techniques to determine whether or not the project’s objectives for quality and process performance will be satisfied.", 
		description: 'This specific practice is project focused and uses multiple inputs to predict if the project\'s quality and process performance objectives will be satisfied. Based on this prediction, risks associated with not meeting the project’s quality and process performance objectives are identified and managed, and actions to address deficiencies are defined as appropriate.

Key inputs to this analysis include the individual subprocess stability and capability data derived from the previous specific practice, as well as performance data from monitoring other subprocesses, risks, and suppliers’ progress.',
	 	specific_goal_id: 32 },
	{ id: 118, name: "SP 2.3: Perform Root Cause Analysis", 
		summary: "Perform root cause analysis of selected issues to address deficiencies in achieving the project’s quality and process performance objectives.", 
		description: 'Issues to address include deficiencies in subprocess stability and capability, and deficiencies in project performance relative to its objectives.

Root cause analysis of selected issues is best performed shortly after the problem is first identified, while the event is still recent enough to be carefully investigated.

The formality of and effort required for a root cause analysis can vary greatly and can be determined by such factors as the stakeholders who are involved; the risk or opportunity that is present; the complexity of the situation; the frequency with which the situation could recur; the availability of data, baselines, and models that can be used in the analysis; and how much time has passed since the events triggering the deficiency.

In the case of a subprocess that exhibits too much variation, is performed rarely, and involves different stakeholders, it could take weeks or months to identify root causes.Likewise, the actions to take can range significantly in terms of effort and time needed to determine, plan, and implement them.

It is often difficult to know how much time is needed unless an initial analysis of the deficiencies is undertaken.',
	 	specific_goal_id: 32 },
	{ id: 119, name: "SP 1.1: Elicit Needs", 
		summary: "Elicit stakeholder needs, expectations, constraints, and interfaces for all phases of the product lifecycle.", 
		description: 'Eliciting goes beyond collecting requirements by proactively identifying additional requirements not explicitly provided by customers. Additional requirements should address the various product lifecycle activities and their impact on the product.

	Examples of techniques to elicit needs include the following:
		* Technology demonstrations
		* Interface control working groups
		* Technical control working groups
		* Interim project reviews
		* Questionnaires, interviews, and scenarios (operational, sustainment, and development) obtained from end users
		* Operational, sustainment, and development walkthroughs and end-user task analysis
		* Quality attribute elicitation workshops with stakeholders
		* Prototypes and models
		* Brainstorming
		* Quality Function Deployment
		* Market surveys
		* Beta testing
		* Extraction from sources such as documents, standards, or specifications
		* Observation of existing products, environments, and workflow patterns
		* Use cases
		* User stories
		* Delivering small incremental “vertical slices” of product functionality
		* Business case analysis
		* Reverse engineering (for legacy products)
		* Customer satisfaction surveys

	Examples of sources of requirements that may not be identified by the customer include the following:
		* Business policies
		* Standards
		* Previous architectural design decisions and principles
		* Business environmental requirements (e.g., laboratories, testing and other facilities, information technology infrastructure)
		* Technology
		* Legacy products or product components (reuse product components)
		* Regulatory statutes',
	 	specific_goal_id: 33 },
	{ id: 120, name: "SP 1.2: Transform Stakeholder Needs into Customer Requirements", 
		summary: "Elicit stakeholder needs, expectations, constraints, and interfaces for all phases of the product lifecycle.", 
		description: 'The various inputs from the relevant stakeholders should be consolidated, missing information should be obtained, and conflicts should be resolved as customer requirements are developed and prioritized. The customer requirements can include needs, expectations, and constraints with regard to verification and validation.
		
In some situations, the customer provides a set of requirements to the project, or the requirements exist as an output of a previous project\'s activities. In these situations, the customer requirements could conflict with the relevant stakeholders\' needs, expectations, constraints, and interfaces and will need to be transformed into the recognized set of customer requirements after appropriate resolution of conflicts.

Relevant stakeholders representing all phases of the product\'s lifecycle should include business as well as technical functions. In this way, concepts for all product related lifecycle processes are considered concurrently with the concepts for the products. Customer requirements result from informed decisions on the business as well as technical effects of their requirements.',
	 	specific_goal_id: 33 },
	{ id: 121, name: "SP 2.1: Establish Product and Product Component Requirements", 
		summary: "Establish and maintain product and product component requirements, which are based on the customer requirements.", 
		description: 'The customer functional and quality attribute requirements can be expressed in the customer’s terms and can be nontechnical descriptions. The product requirements are the expression of these requirements in technical terms that can be used for design decisions. An example of this translation is found in the first House of Quality Function Deployment, which maps customer desires into technical parameters. For instance, “solid sounding door” may be mapped to size, weight, fit, dampening, and resonant frequencies.

Product and product component requirements address the satisfaction of customer, business, and project objectives and associated attributes, such as effectiveness and affordability.

Derived requirements also address the needs of other lifecycle phases (e.g., production, operations, disposal) to the extent compatible with business objectives.

The modification of requirements due to approved requirement changes is covered by the “maintain” aspect of this specific practice; whereas, the administration of requirement changes is covered by the Requirements Management process area.',
	 	specific_goal_id: 34 },
	{ id: 122, name: "SP 2.2: Allocate Product Component Requirements", 
		summary: "Allocate the requirements for each product component.", 
		description: 'The product architecture provides the basis for allocating product requirements to product components. The requirements for product components of the defined solution include allocation of product performance; design constraints; and fit, form, and function to meet requirements and facilitate production. In cases where a higher level requirement specifies a quality attribute that will be the responsibility of more than one product component, the quality attribute can sometimes be partitioned for unique allocation to each product component as a derived requirement, however, other times the shared requirement should instead be allocated directly to the architecture. For example, allocation of shared requirements to the architecture would describe how a performance requirement (e.g., on responsiveness) is budgeted among components so as to account in an end-to-end manner for realization of the requirement. This concept of shared requirements can extend to other architecturally significant quality attributes (e.g., security, reliability).',
	 	specific_goal_id: 34 },
	{ id: 123, name: "SP 2.3: Identify Interface Requirements", 
		summary: "Identify interface requirements.", 
		description: 'Interfaces between functions (or between objects or other logical entities) are identified. Interfaces can drive the development of alternative solutions described in the Technical Solution process area.

Interface requirements between products or product components identified in the product architecture are defined. They are controlled as part of product and product component integration and are an integral part of the architecture definition.',
	 	specific_goal_id: 34 },
	{ id: 124, name: "SP 3.1: Establish Operational Concepts and Scenarios", 
		summary: "Establish and maintain operational concepts and associated scenarios.", 
		description: 'A scenario is typically a sequence of events that may occur in the development, use, or sustainment of the product, which is used to make explicit some of the functional or quality attribute needs of the stakeholders. In contrast, an operational concept for a product usually depends on both the design solution and the scenario. For example, the operational concept for a satellite based communications product is quite different from one based on landlines. Since the alternative solutions have not usually been defined when preparing the initial operational concepts, conceptual solutions are developed for use when analyzing the requirements. The operational concepts are refined as solution decisions are made and lower level detailed requirements are developed.
	
Just as a design decision for a product can become a requirement for a product component, the operational concept can become the scenarios (requirements) for product components. Operational concepts and scenarios are evolved to facilitate the selection of product component solutions that, when implemented, will satisfy the intended use of the product or facilitate its development and sustainment. Operational concepts and scenarios document the interaction of the product components with the environment, end users, and other product components, regardless of engineering discipline. They should be documented for all modes and states within operations, product development, deployment, delivery, support (including maintenance and sustainment), training, and disposal.

Scenarios can be developed to address operational, sustainment, development, or other event sequences.',
	 	specific_goal_id: 35 },
	{ id: 125, name: "SP 3.2: Establish a Definition of Required Functionality and Quality Attributes", 
		summary: "Establish and maintain a definition of required functionality and quality attributes.", 
		description: 'One approach to defining required functionality and quality attributes is to analyze scenarios using what some have called a “functional analysis” to describe what the product is intended to do. This functional description can include actions, sequence, inputs, outputs, or other information that communicates the manner in which the product will be used. The resulting description of functions, logical groupings of functions, and their association with requirements is referred to as a functional architecture. 

Such approaches have evolved in recent years through the introduction of architecture description languages, methods, and tools to more fully address and characterize the quality attributes, allowing a richer (e.g., multi-dimensional) specification of constraints on how the defined functionality will be realized in the product, and facilitating additional analyses of the requirements and technical solutions. Some quality attributes will emerge as architecturally significant and thus drive the development of the product architecture. These quality attributes often reflect cross-cutting concerns that may not be allocatable to lower level elements of a solution. A clear understanding of the quality attributes and their importance based on mission or business needs is an essential input to the design process.',
	 	specific_goal_id: 35 },
	{ id: 126, name: "SP 3.3: Analyze Requirements", 
		summary: "Analyze requirements to ensure that they are necessary and sufficient.", 
		description: 'In light of the operational concept and scenarios, the requirements for one level of the product hierarchy are analyzed to determine whether they are necessary and sufficient to meet the objectives of higher levels of the product hierarchy. The analyzed requirements then provide the basis for more detailed and precise requirements for lower levels of the product hierarchy.

As requirements are defined, their relationship to higher level requirements and the higher level definition of required functionality and quality attributes should be understood. Also, the key requirements used to track progress are determined. For instance, the weight of a product or size of a software product can be monitored through development based on its risk or its criticality to the customer.',
	 	specific_goal_id: 35 },
	{ id: 127, name: "SP 3.4: Analyze Requirements to Achieve Balance", 
		summary: "Analyze requirements to balance stakeholder needs and constraints.", 
		description: 'Stakeholder needs and constraints can address such things as cost, schedule, product or project performance, functionality, priorities, reusable components, maintainability, or risk.',
	 	specific_goal_id: 35 },
	{ id: 128, name: "SP 3.5: Validate Requirements", 
		summary: "Validate requirements to ensure the resulting product will perform as intended in the end user's environment.", 
		description: 'Requirements validation is performed early in the development effort with end users to gain confidence that the requirements are capable of guiding a development that results in successful final validation. This activity should be integrated with risk management activities. Mature organizations will typically perform requirements validation in a more sophisticated way using multiple techniques and will broaden the basis of the validation to include other stakeholder needs and expectations.
	Examples of techniques used for requirements validation include the following:
		* Analysis 
		* Simulations 
		* Prototyping 
		* Demonstrations',
	 	specific_goal_id: 35 },
	{ id: 129, name: "SP 1.1: Understand Requirements", 
		summary: "Develop an understanding with the requirements providers on the meaning of the requirements.", 
		description: 'As the project matures and requirements are derived, all activities or disciplines will receive requirements. To avoid requirements creep, criteria are established to designate appropriate channels or official sources from which to receive requirements. Those who receive requirements conduct analyses of them with the provider to ensure that a compatible, shared understanding is reached on the meaning of requirements. The result of these analyses and dialogs is a set of approved requirements.',
	 	specific_goal_id: 36 },
	{ id: 130, name: "SP 1.2: Obtain Commitment to Requirements", 
		summary: "Obtain commitment to requirements from project participants.", 
		description: 'The previous specific practice dealt with reaching an understanding with requirements providers. This specific practice deals with agreements and commitments among those who carry out activities necessary to implement requirements. Requirements evolve throughout the project. As requirements evolve, this specific practice ensures that project participants commit to the current and approved requirements and the resulting changes in project plans, activities, and work products.',
	 	specific_goal_id: 36 },
	{ id: 131, name: "SP 1.3: Manage Requirements Changes", 
		summary: "Manage changes to requirements as they evolve during the project.", 
		description: 'Requirements change for a variety of reasons. As needs change and as work proceeds, changes may have to be made to existing requirements. It is essential to manage these additions and changes efficiently and effectively. To effectively analyze the impact of changes, it is necessary that the source of each requirement is known and the rationale for the change is documented. The project may want to track appropriate measures of requirements volatility to judge whether new or revised approach to change control is necessary.',
	 	specific_goal_id: 36 },
	{ id: 132, name: "SP 1.4: Maintain Bidirectional Traceability of Requirements", 
		summary: "Maintain bidirectional traceability among requirements and work products.", 
		description: 'The intent of this specific practice is to maintain the bidirectional traceability of requirements. When requirements are managed well, traceability can be established from a source requirement to its lower level requirements and from those lower level requirements back to their source requirements. Such bidirectional traceability helps to determine whether all source requirements have been completely addressed and whether all lower level requirements can be traced to a valid source.
	
Requirements traceability also covers relationships to other entities such as intermediate and final work products, changes in design documentation, and test plans. Traceability can cover horizontal relationships, such as across interfaces, as well as vertical relationships. Traceability is particularly needed when assessing the impact of requirements changes on project activities and work products.

	Examples of what aspects of traceability to consider include the following:
		* Scope of traceability: The boundaries within which traceability is needed
		* Definition of traceability: The elements that need logical relationships
		* Type of traceability: When horizontal and vertical traceability is needed

Such bidirectional traceability is not always automated. It can be done manually using spreadsheets, databases, and other common tools.',
	 	specific_goal_id: 36 },
	{ id: 133, name: "SP 1.5: Ensure Alignment Between Project Work and Requirements", 
		summary: "Ensure that project plans and work products remain aligned with requirements.", 
		description: 'This specific practice finds inconsistencies between requirements and project plans and work products and initiates corrective actions to resolve them.',
	 	specific_goal_id: 36 },
	{ id: 134, name: "SP 1.1: Determine Risk Sources and Categories", 
		summary: "Determine risk sources and categories.", 
		description: 'Identifying risk sources provides a basis for systematically examining changing situations over time to uncover circumstances that affect the ability of the project to meet its objectives. Risk sources are both internal and external to the project. As the project progresses, additional sources of risk can be identified. Establishing categories for risks provides a mechanism for collecting and organizing risks as well as ensuring appropriate scrutiny and management attention to risks that can have serious consequences on meeting project objectives.',
	 	specific_goal_id: 37 },
	{ id: 135, name: "SP 1.2: Determine Risk Parameters", 
		summary: "Define parameters used to analyze and categorize risks and to control the risk management effort.", 
		description: 'Parameters for evaluating, categorizing, and prioritizing risks include the following:
	* Risk likelihood (i.e., probability of risk occurrence)
	* Risk consequence (i.e., impact and severity of risk occurrence)
	* Thresholds to trigger management activities
Risk parameters are used to provide common and consistent criteria for comparing risks to be managed. Without these parameters, it is difficult to gauge the severity of an unwanted change caused by a risk and to prioritize the actions required for risk mitigation planning.

Projects should document the parameters used to analyze and categorize risks so that they are available for reference throughout the life of the project because circumstances change over time. Using these parameters, risks can easily be re-categorized and analyzed when changes occur.

The project can use techniques such as failure mode and effects analysis (FMEA) to examine risks of potential failures in the product or in selected product development processes. Such techniques can help to provide discipline in working with risk parameters.',
	 	specific_goal_id: 37 },
	{ id: 136, name: "SP 1.3: Establish a Risk Management Strategy", 
		summary: "Establish and maintain the strategy to be used for risk management.", 
		description: 'A comprehensive risk management strategy addresses items such as the following:
	* The scope of the risk management effort
	* Methods and tools to be used for risk identification, risk analysis, risk mitigation, risk monitoring, and communication
	* Project specific sources of risks
	* How risks are to be organized, categorized, compared, and consolidated
	* Parameters used for taking action on identified risks, including likelihood, consequence, and thresholds
	* Risk mitigation techniques to be used, such as prototyping, piloting, simulation, alternative designs, or evolutionary development
	* The definition of risk measures used to monitor the status of risks
	* Time intervals for risk monitoring or reassessment
		
The risk management strategy should be guided by a common vision of success that describes desired future project outcomes in terms of the product delivered, its cost, and its fitness for the task. The risk management strategy is often documented in a risk management plan for the organization or project. This strategy is reviewed with relevant stakeholders to promote commitment and understanding.

A risk management strategy should be developed early in the project, so that relevant risks are identified and managed proactively. Early identification and assessment of critical risks allows the project to formulate risk handling approaches and adjust project definition and allocation of resources based on critical risks.',
	 	specific_goal_id: 37 },
	{ id: 137, name: "SP 2.1: Identify Risks", 
		summary: "Identify and document risks.", 
		description: 'Identifying potential issues, hazards, threats, and vulnerabilities that could negatively affect work efforts or plans is the basis for sound and successful risk management. Risks should be identified and described understandably before they can be analyzed and managed properly. Risks are documented in a concise statement that includes the context, conditions, and consequences of risk occurrence.

Risk identification should be an organized, thorough approach to seek out probable or realistic risks in achieving objectives. To be effective, risk identification should not attempt to address every possible event. Using categories and parameters developed in the risk management strategy and identified sources of risk can provide the discipline and streamlining appropriate for risk identification. Identified risks form a baseline for initiating risk management activities. Risks should be reviewed periodically to reexamine possible sources of risk and changing conditions to uncover sources and risks previously overlooked or nonexistent when the risk management strategy was last updated.

Risk identification focuses on the identification of risks, not the placement of blame. The results of risk identification activities should never be used by management to evaluate the performance of individuals.

	Many methods are used for identifying risks. Typical identification methods include the following: 
		* Examine each element of the project work breakdown structure.
		* Conduct a risk assessment using a risk taxonomy.
		* Interview subject matter experts.
		* Review risk management efforts from similar products.
		* Examine lessons learned documents or databases.
		* Examine design specifications and agreement requirements.',
	 	specific_goal_id: 38 },
	{ id: 138, name: "SP 2.2: Evaluate, Categorize, and Prioritize Risks", 
		summary: "Evaluate and categorize each identified risk using defined risk categories and parameters, and determine its relative priority.", 
		description: 'The evaluation of risks is needed to assign a relative importance to each identified risk and is used in determining when appropriate management attention is required. Often it is useful to aggregate risks based on their interrelationships and develop options at an aggregate level. When an aggregate risk is formed by a roll up of lower level risks, care should be taken to ensure that important lower level risks are not ignored.

Collectively, the activities of risk evaluation, categorization, and prioritization are sometimes called a “risk assessment” or “risk analysis.”',
	 	specific_goal_id: 38 },
	{ id: 139, name: "SP 3.1: Develop Risk Mitigation Plans", 
		summary: "Evaluate and categorize each identified risk using defined risk categories and parameters, and determine its relative priority.", 
		description: 'A critical component of risk mitigation planning is developing alternative courses of action, workarounds, and fallback positions, and a recommended course of action for each critical risk. The risk mitigation plan for a given risk includes techniques and methods used to avoid, reduce, and control the probability of risk occurrence; the extent of damage incurred should the risk occur (sometimes called a “contingency plan”); or both. Risks are monitored and when they exceed established thresholds, risk mitigation plans are deployed to return the affected effort to an acceptable risk level. If the risk cannot be mitigated, a contingency plan can be invoked. Both risk mitigation and contingency plans often are generated only for selected risks for which consequences of the risks are high or unacceptable. Other risks may be accepted and simply monitored.

	Options for handling risks typically include alternatives such as the following: 
		* Risk avoidance: changing or lowering requirements while still meeting end user needs
		* Risk control: taking active steps to minimize risks
		* Risk transfer: reallocating requirements to lower risks
		* Risk monitoring: watching and periodically reevaluating the risk for changes in assigned risk parameters
		* Risk acceptance: acknowledging risk but not taking action

Often, especially for high-impact risks, more than one approach to handling a risk should be generated.

	For example, in the case of an event that disrupts the continuity of operations, approaches to risk management can include establishing the following:
		* Resource reserves to respond to disruptive events
		* Lists of available backup equipment
		* Backups to key staff
		* Plans for testing emergency response systems
		* Posted procedures for emergencies
		* Disseminated lists of key contacts and information resources for emergencies

In many cases, risks are accepted or watched. Risk acceptance is usually done when the risk is judged too low for formal mitigation or when there appears to be no viable way to reduce the risk. If a risk is accepted, the rationale for this decision should be documented. Risks are watched when there is an objectively defined, verifiable, and documented threshold (e.g., for cost, schedule, performance, risk exposure) that will trigger risk mitigation planning or invoke a contingency plan.

Adequate consideration should be given early to technology demonstrations, models, simulations, pilots, and prototypes as part of risk mitigation planning.',
	 	specific_goal_id: 39 },
	{ id: 140, name: "SP 3.2: Implement Risk Mitigation Plans", 
		summary: "Monitor the status of each risk periodically and implement the risk mitigation plan as appropriate.", 
		description: 'To effectively control and manage risks during the work effort, follow a proactive program to regularly monitor risks and the status and results of risk handling actions. The risk management strategy defines the intervals at which risk status should be revisited. This activity can result in the discovery of new risks or new risk handling options that can require replanning and reassessment. In either event, acceptability thresholds associated with the risk should be compared to the risk status to determine the need for implementing a risk mitigation plan.',
	 	specific_goal_id: 39 },
	{ id: 141, name: "SP 1.1: Determine Acquisition Type", 
		summary: "Determine the type of acquisition for each product or product component to be acquired.", 
		description: 'Many different types of acquisitions can be used to acquire products and product components that can be used by the project.

	Examples of types of acquisitions include the following:
		* Purchasing modified COTS products of significant value to the project
		* Obtaining products through a supplier agreement
		* Obtaining products from an in-house supplier
		* Obtaining products from the customer
		* Obtaining products from a preferred supplier
		* Combining some of the above (e.g., contracting for a modification to a COTS product, having another part of the business enterprise co-develop products with an external supplier)

If acquiring modified COTS products of significant value to the project or that represent significant project risk, care in evaluating and selecting these products and the supplier can be critical to the project. Aspects to consider in the selection decision include proprietary issues and the availability of the products.',
	 	specific_goal_id: 40 },
	{ id: 142, name: "SP 1.2: Select Suppliers", 
		summary: "Select suppliers based on an evaluation of their ability to meet the specified requirements and established criteria.", 
		description: 'Criteria should be established to address factors that are important to the project.
Examples of factors that can be important to the project include the following:
	* Geographical location of the supplier
	* Supplier’s performance records on similar work
	* Engineering capabilities
	* Staff and facilities available to perform the work
	* Prior experience in similar situations
	* Customer satisfaction with similar products delivered by the supplier',
	 	specific_goal_id: 40 },
	{ id: 143, name: "SP 1.3: Establish Supplier Agreements", 
		summary: "Establish and maintain supplier agreements.", 
		description: 'A supplier agreement is any written agreement between the organization (representing the project) and the supplier. This agreement can be a contract, license, service level agreement, or memorandum of agreement.

The content of the supplier agreement should specify the arrangement for selecting supplier processes and work products to be monitored, analyzed, and evaluated, if the arrangement is appropriate to the acquisition or product being acquired. The supplier agreement should also specify the reviews, monitoring, evaluations, and acceptance testing to be performed.

Supplier processes that are critical to the success of the project (e.g., due to complexity, due to importance) should be monitored.

Supplier agreements between independent legal entities are typically reviewed by legal or contract advisors prior to approval.',
	 	specific_goal_id: 40 },
	{ id: 144, name: "SP 2.1: Execute the Supplier Agreement", 
		summary: "Perform activities with the supplier as specified in the supplier agreement.", 
		description: '',
	 	specific_goal_id: 41 },
	 { id: 145, name: "SP 2.2: Accept the Acquired Product", 
		summary: "Ensure that the supplier agreement is satisfied before accepting the acquired product.", 
		description: 'Acceptance reviews, tests, and configuration audits should be completed before accepting the product as defined in the supplier agreement.',
	 	specific_goal_id: 41 },
	{ id: 146, name: "SP 2.3: Ensure Transition of Products", 
		summary: "Ensure the transition of products acquired from the supplier.", 
		description: 'Before the acquired product is transferred to the project, customer, or end user, appropriate preparation and evaluation should occur to ensure a smooth transition.',
	 	specific_goal_id: 41 },
	{ id: 147, name: "SP 1.1: Develop Alternative Solutions and Selection Criteria", 
		summary: "Develop alternative solutions and selection criteria.", 
		description: 'Alternative solutions should be identified and analyzed to enable the selection of a balanced solution across the life of the product in terms of cost, schedule, performance, and risk. These solutions are based on proposed product architectures that address critical product quality attribute requirements and span a design space of feasible solutions. Specific practices associated with the Develop the Design specific goal provide more information on developing potential product architectures that can be incorporated into alternative solutions for the product.

Alternative solutions frequently encompass alternative requirement allocations to different product components. These alternative solutions can also include the use of COTS solutions in the product architecture. Processes associated with the Requirements Development process area would then be employed to provide a more complete and robust provisional allocation of requirements to the alternative solutions.

Alternative solutions span the acceptable range of cost, schedule, and performance. The product component requirements are received and used along with design issues, constraints, and criteria to develop the alternative solutions. Selection criteria would typically address costs (e.g., time, people, money), benefits (e.g., product performance, capability, effectiveness), and risks (e.g., technical, cost, schedule). Considerations for alternative solutions and selection criteria include the following:
	* Cost of development, manufacturing, procurement, maintenance, and support
	* Achievement of key quality attribute requirements, such as product timeliness, safety, reliability, and maintainability
	* Complexity of the product component and product related lifecycle processes
	* Robustness to product operating and use conditions, operating modes, environments, and variations in product related lifecycle processes
	* Product expansion and growth
	* Technology limitations
	* Sensitivity to construction methods and materials
	* Risk
	* Evolution of requirements and technology
	* Disposal
	* Capabilities and limitations of end users and operators
	* Characteristics of COTS products

The considerations listed here are a basic set; organizations should develop screening criteria to narrow down the list of alternatives that are consistent with their business objectives. Product lifecycle cost, while being a desirable parameter to minimize, can be outside the control of development organizations. A customer may not be willing to pay for features that cost more in the short term but ultimately decrease cost over the life of the product. In such cases, customers should at least be advised of any potential for reducing lifecycle costs. The criteria used to select final solutions should provide a balanced approach to costs, benefits, and risks.',
	 	specific_goal_id: 42 },
	{ id: 148, name: "SP 1.2: Select Product Component Solutions", 
		summary: "Select the product component solutions based on selection criteria.", 
		description: 'Selecting product components that best satisfy the criteria establishes the requirement allocations to product components. Lower level requirements are generated from the selected alternative and used to develop product component designs. Interfaces among product components are described. Physical interface descriptions are included in the documentation for interfaces to items and activities external to the product.

The description of the solutions and the rationale for selection are documented. The documentation evolves throughout development as solutions and detailed designs are developed and those designs are implemented. Maintaining a record of rationale is critical to downstream decision making. Such records keep downstream stakeholders from redoing work and provide insights to apply technology as it becomes available in applicable circumstances.',
	 	specific_goal_id: 43 },
	{ id: 149, name: "SP 2.1: Design the Product or Product Component", 
		summary: "Develop a design for the product or product component.", 
		description: 'Product design consists of two broad phases that can overlap in execution: preliminary and detailed design. Preliminary design establishes product capabilities and the product architecture, including architectural styles and patterns, product partitions, product component identifications, system states and modes, major intercomponent interfaces, and external product interfaces. Detailed design fully defines the structure and capabilities of the product components.

Architecture definition is driven from a set of architectural requirements developed during the requirements development processes. These requirements identify the quality attributes that are critical to the success of the product. The architecture defines structural elements and coordination mechanisms that either directly satisfy requirements or support the achievement of the requirements as the details of the product design are established. Architectures can include standards and design rules governing development of product components and their interfaces as well as guidance to aid product developers. Specific practices in the Select Product Component Solutions specific goal contain more information about using product architectures as a basis for alternative solutions.

Architects postulate and develop a model of the product, making judgments about allocation of functional and quality attribute requirements to product components including hardware and software. Multiple architectures, supporting alternative solutions, can be developed and analyzed to determine the advantages and disadvantages in the context of the architectural requirements.

Operational concepts and operational, sustainment, and development scenarios are used to generate use cases and quality attribute related scenarios that are used to refine the architecture. They are also used as a means to evaluate the suitability of the architecture for its intended purpose during architecture evaluations, which are conducted periodically throughout product design.

	Examples of architecture definition tasks include the following:
		* Establishing the structural relations of partitions and rules regarding interfaces between elements within partitions, and between partitions
		* Selecting architectural patterns that support the functional and quality attribute requirements, and instantiating or composing those patterns to create the product architecture
		* Identifying major internal interfaces and all external interfaces
		* Identifying product components and interfaces between them
		* Formally defining component behavior and interaction using an architecture description language
		* Defining coordination mechanisms (e.g., for software, hardware)
		* Establishing infrastructure capabilities and services
		* Developing product component templates or classes and frameworks
		* Establishing design rules and authority for making decisions
		* Defining a process/thread model
		* Defining physical deployment of software to hardware 
		* Identifying major reuse approaches and sources

During detailed design, the product architecture details are finalized, product components are completely defined, and interfaces are fully characterized. Product component designs can be optimized for certain quality attributes. Designers can evaluate the use of legacy or COTS products for the product components. As the design matures, the requirements assigned to lower level product components are tracked to ensure that those requirements are satisfied.

For software engineering, detailed design is focused on software product component development. The internal structure of product components is defined, data schemas are generated, algorithms are developed, and heuristics are established to provide product component capabilities that satisfy allocated requirements.

For hardware engineering, detailed design is focused on product development of electronic, mechanical, electro-optical, and other hardware products and their components. Electrical schematics and interconnection diagrams are developed, mechanical and optical assembly models are generated, and fabrication and assembly processes are developed.',
	 	specific_goal_id: 43 },
	{ id: 150, name: "SP 2.2: Establish a Technical Data Package", 
		summary: "Establish and maintain a technical data package.", 
		description: 'A technical data package provides the developer with a comprehensive description of the product or product component as it is developed. Such a package also provides procurement flexibility in a variety of circumstances such as performance based contracting or build-to-print. 

The design is recorded in a technical data package that is created during preliminary design to document the architecture definition. This technical data package is maintained throughout the life of the product to record essential details of the product design. The technical data package provides the description of a product or product component (including product related lifecycle processes if not handled as separate product components) that supports an acquisition strategy, or the implementation, production, engineering, and logistics support phases of the product lifecycle. The description includes the definition of the required design configuration and procedures to ensure adequacy of product or product component performance. It includes all applicable technical data such as drawings, associated lists, specifications, design descriptions, design databases, standards, quality attribute requirements, quality assurance provisions, and packaging details. The technical data package includes a description of the selected alternative solution that was chosen for implementation.

Because design descriptions can involve a large amount of data and can be crucial to successful product component development, it is advisable to establish criteria for organizing the data and for selecting the data content. It is particularly useful to use the product architecture as a means of organizing this data and abstracting views that are clear and relevant to an issue or feature of interest. These views include the following:
	* Customers 
	* Requirements
	* The environment
	* Functional
	* Logical 
	* Security
	* Data
	* States/modes
	* Construction
	* Management',
	 	specific_goal_id: 43 },
	{ id: 151, name: "SP 2.3: Design Interfaces Using Criteria", 
		summary: "Design product component interfaces using established criteria.", 
		description: 'Interface designs include the following:
	* Origination
	* Destination
	* Stimulus and data characteristics for software, including sequencing constraints or protocols
	* Resources consumed processing a particular stimulus
	* Exception or error handling behavior for stimuli that are erroneous or out of specified limits
	* Electrical, mechanical, and functional characteristics for hardware
	* Services lines of communication

The criteria for interfaces frequently reflect critical parameters that should be defined, or at least investigated, to ascertain their applicability. These parameters are often peculiar to a given type of product (e.g., software, mechanical, electrical, service) and are often associated with safety, security, durability, and mission critical characteristics.',
	 	specific_goal_id: 43 },
	{ id: 152, name: "SP 2.4: Perform Make, Buy, or Reuse Analyses", 
		summary: "Evaluate whether the product components should be developed, purchased, or reused based on established criteria.", 
		description: 'The determination of what products or product components will be acquired is frequently referred to as a “make-or-buy analysis.” It is based on an analysis of the needs of the project. This make-or-buy analysis begins early in the project during the first iteration of design; continues during the design process; and is completed with the decision to develop, acquire, or reuse the product.

	Factors affecting the make-or-buy decision include the following:
		* Functions the products will provide and how these functions will fit into the project
		* Available project resources and skills
		* Costs of acquiring versus developing internally
		* Critical delivery and integration dates
		* Strategic business alliances, including high-level business requirements
		* Market research of available products, including COTS products
		* Functionality and quality of available products
		* Skills and capabilities of potential suppliers
		* Impact on core competencies
		* Licenses, warranties, responsibilities, and limitations associated with products being acquired
		* Product availability
		* Proprietary issues
		* Risk reduction
		* Match between needs and product line core assets

The make-or-buy decision can be conducted using a formal evaluation approach.

As technology evolves, so does the rationale for choosing to develop or purchase a product component. While complex development efforts can favor purchasing an off-the-shelf product component, advances in productivity and tools can provide an opposing rationale. Off-the-shelf products can have incomplete or inaccurate documentation and may or may not be supported in the future.

Once the decision is made to purchase an off-the-shelf product component, how to implement that decision depends on the type of item being acquired. There are times when “off the shelf” refers to an existing item that is not readily available because it must first be customized to meet particular purchaser specified requirements for performance and other product characteristics as part of its procurement (e.g., aircraft engines). To manage such procurements, a supplier agreement is established that includes these requirements and the acceptance criteria to be met. In other cases, the off-the-shelf product is literally off the shelf (word processing software, for example) and there is no agreement with the supplier that needs to be managed.',
	 	specific_goal_id: 43 },
	{ id: 153, name: "SP 3.1: Implement the Design", 
		summary: "Implement the designs of the product components.", 
		description: 'Once the design has been completed, it is implemented as a product component. The characteristics of that implementation depend on the type of product component.

Design implementation at the top level of the product hierarchy involves the specification of each of the product components at the next level of the product hierarchy. This activity includes the allocation, refinement, and verification of each product component. It also involves the coordination between the various product component development efforts.

	Example characteristics of this implementation are as follows:
		* Software is coded.
		* Data are documented.
		* Services are documented.
		* Electrical and mechanical parts are fabricated.
		* Product-unique manufacturing processes are put into operation.
		* Processes are documented.
		* Facilities are constructed.
		* Materials are produced (e.g., a product-unique material could be petroleum, oil, a lubricant, a new alloy).',
	 	specific_goal_id: 44 },
	{ id: 154, name: "SP 3.2: Develop Product Support Documentation", 
		summary: "Develop and maintain the end-use documentation.", 
		description: 'This specific practice develops and maintains the documentation that will be used to install, operate, and maintain the product.',
	 	specific_goal_id: 44 },
	 { id: 155, name: "SP 1.1: Select Products for Validation", 
		summary: "Select products and product components to be validated and validation methods to be used.", 
		description: 'Products and product components are selected for validation based on their relationship to end user needs. For each product component, the scope of the validation (e.g., operational behavior, maintenance, training, user interface) should be determined.

	Examples of products and product components that can be validated include the following:
		* Product and product component requirements and designs
		* Product and product components (e.g., system, hardware units, software, service documentation)
		* User interfaces
		* User manuals
		* Training materials
		* Process documentation
		* Access protocols
		* Data interchange reporting formats

The requirements and constraints for performing validation are collected. Then, validation methods are selected based on their ability to demonstrate that end user needs are satisfied. The validation methods not only define the approach to product validation, but also drive the needs for the facilities, equipment, and environments. The validation approach and needs can result in the generation of lower level product component requirements that are handled by the requirements development processes. Derived requirements, such as interface requirements to test sets and test equipment, can be generated. These requirements are also passed to the requirements development processes to ensure that the product or product components can be validated in an environment that supports the methods.

Validation methods should be selected early in the life of the project so they are clearly understood and agreed to by relevant stakeholders.

Validation methods address the development, maintenance, support, and training for the product or product component as appropriate.

Examples of validation methods include the following:
	* Discussions with end users, perhaps in the context of a formal review
	* Prototype demonstrations
	* Functional demonstrations (e.g., system, hardware units, software, service documentation, user interfaces)
	* Pilots of training materials
	* Tests of products and product components by end users and other relevant stakeholders
	* Incremental delivery of working and potentially acceptable product
	* Analyses of product and product components (e.g., simulations, modeling, user analyses)

Hardware validation activities include modeling to validate form, fit, and function of mechanical designs; thermal modeling; maintainability and reliability analysis; timeline demonstrations; and electrical design simulations of electronic or mechanical product components.',
	 	specific_goal_id: 45 },
	{ id: 156, name: "SP 1.2: Establish the Validation Environment", 
		summary: "Establish and maintain the environment needed to support validation.", 
		description: 'The requirements for the validation environment are driven by the product or product components selected, by the type of the work products (e.g., design, prototype, final version), and by the methods of validation. These selections can yield requirements for the purchase or development of equipment, software, or other resources. These requirements are provided to the requirements development processes for development. The validation environment can include the reuse of existing resources. In this case, arrangements for the use of these resources should be made.

Example types of elements in a validation environment include the following:
	* Test tools interfaced with the product being validated (e.g., scope, electronic devices, probes)
	* Temporary embedded test software
	* Recording tools for dump or further analysis and replay
	* Simulated subsystems or components (e.g., software, electronics, mechanics)
	* Simulated interfaced systems (e.g., a dummy warship for testing a naval radar)
	* Real interfaced systems (e.g., aircraft for testing a radar with trajectory tracking facilities)
	* Facilities and customer supplied products
	* Skilled people to operate or use all the preceding elements
	* Dedicated computing or network test environment (e.g., pseudo-operational telecommunications network test bed or facility with actual trunks, switches, and systems established for realistic integration and validation trials)

Early selection of products or product components to be validated, work products to be used in validation, and validation methods is needed to ensure that the validation environment will be available when necessary.

The validation environment should be carefully controlled to provide for replication, results analysis, and revalidation of problem areas.',
	 	specific_goal_id: 45 },
	{ id: 157, name: "SP 1.3: Establish Validation Procedures and Criteria", 
		summary: "Establish and maintain procedures and criteria for validation.", 
		description: 'Validation procedures and criteria are defined to ensure the product or product component will fulfill its intended use when placed in its intended environment. Test cases and procedures for acceptance testing can be used for validation procedures.

The validation procedures and criteria include test and evaluation of maintenance, training, and support services.

	Examples of sources for validation criteria include the following:
		* Product and product component requirements
		* Standards
		* Customer acceptance criteria
		* Environmental performance
		* Thresholds of performance deviation',
	 	specific_goal_id: 45 },
	{ id: 158, name: "SP 2.1: Perform Validation", 
		summary: "Perform validation on selected products and product components.", 
		description: 'To be acceptable to stakeholders, a product or product component should perform as expected in its intended operational environment. 

Validation activities are performed and the resulting data are collected according to established methods, procedures, and criteria.

The as-run validation procedures should be documented and the deviations occurring during the execution should be noted as appropriate.',
	 	specific_goal_id: 46 },
	{ id: 159, name: "SP 2.2: Analyze Validation Results", 
		summary: "Analyze results of validation activities.", 
		description: 'The data resulting from validation tests, inspections, demonstrations, or evaluations are analyzed against defined validation criteria. Analysis reports indicate whether needs were met. In the case of deficiencies, these reports document the degree of success or failure and categorize probable causes of failure. The collected test, inspection, or review results are compared with established evaluation criteria to determine whether to proceed or to address requirements or design issues in the requirements development or technical solution processes.

Analysis reports or as-run validation documentation can also indicate that bad test results are due to a validation procedure problem or a validation environment problem.',
	 	specific_goal_id: 46 },
	{ id: 160, name: "SP 1.1: Select Work Products for Verification", 
		summary: "Select work products to be verified and verification methods to be used.", 
		description: 'Work products are selected based on their contribution to meeting project objectives and requirements, and to addressing project risks.

The work products to be verified can include the ones associated with maintenance, training, and support services. The work product requirements for verification are included with the verification methods. The verification methods address the approach to work product verification and the specific approaches that will be used to verify that specific work products meet their requirements.

	Examples of verification methods include the following:
		* Software architecture evaluation and implementation conformance evaluation
		* Path coverage testing
		* Load, stress, and performance testing
		* Decision table based testing
		* Functional decomposition based testing
		* Test case reuse
		* Acceptance testing
		* Continuous integration (i.e., Agile approach that identifies integration issues early)

*Verification for systems engineering typically includes prototyping, modeling, and simulation to verify adequacy of system design (and allocation).*

*Verification for hardware engineering typically requires a parametric approach that considers various environmental conditions (e.g., pressure, temperature, vibration, humidity), various input ranges (e.g., input power could be rated at 20V to 32V for a planned nominal of 28V), variations induced from part to part tolerance issues, and many other variables. Hardware verification normally tests most variables separately except when problematic interactions are suspected.*

Selection of verification methods typically begins with the definition of product and product component requirements to ensure that the requirements are verifiable. Re-verification should be addressed by verification methods to ensure that rework performed on work products does not cause unintended defects. Suppliers should be involved in this selection to ensure that the project\'s methods are appropriate for the supplier\'s environment.',
	 	specific_goal_id: 47 },
	{ id: 161, name: "SP 1.2: Establish the Verification Environment", 
		summary: "Establish and maintain the environment needed to support verification.", 
		description: 'An environment should be established to enable verification to take place. The verification environment can be acquired, developed, reused, modified, or obtained using a combination of these activities, depending on the needs of the project.

The type of environment required depends on the work products selected for verification and the verification methods used. A peer review can require little more than a package of materials, reviewers, and a room. A product test can require simulators, emulators, scenario generators, data reduction tools, environmental controls, and interfaces with other systems.',
	 	specific_goal_id: 47 },
	{ id: 162, name: "SP 1.3: Establish Verification Procedures and Criteria", 
		summary: "Establish and maintain verification procedures and criteria for the selected work products.", 
		description: 'Verification criteria are defined to ensure that work products meet their requirements.
	
	Examples of sources for verification criteria include the following:
		* Product and product component requirements
		* Standards
		* Organizational policies
		* Test type
		* Test parameters
		* Parameters for tradeoff between quality and cost of testing
		* Type of work products
		* Suppliers
		* Proposals and agreements
		* Customers reviewing work products collaboratively with developers',
	 	specific_goal_id: 47 },
	{ id: 163, name: "SP 2.1: Prepare for Peer Reviews", 
		summary: "Prepare for peer reviews of selected work products.", 
		description: 'Preparation activities for peer reviews typically include identifying the staff to be invited to participate in the peer review of each work product; identifying key reviewers who should participate in the peer review; preparing and updating materials to be used during peer reviews, such as checklists and review criteria and scheduling peer reviews.',
	 	specific_goal_id: 48 },
	{ id: 164, name: "SP 2.2: Conduct Peer Reviews", 
		summary: "Conduct peer reviews of selected work products and identify issues resulting from these reviews.", 
		description: 'One of the purposes of conducting a peer review is to find and remove defects early. Peer reviews are performed incrementally as work products are being developed. These reviews are structured and are not management reviews.

Peer reviews can be performed on key work products of specification, design, test, and implementation activities and specific planning work products.

The focus of the peer review should be on the work product in review, not on the person who produced it.

When issues arise during the peer review, they should be communicated to the primary developer of the work product for correction.

Peer reviews should address the following guidelines: there should be sufficient preparation, the conduct should be managed and controlled, consistent and sufficient data should be recorded (an example is conducting a formal inspection), and action items should be recorded.',
	 	specific_goal_id: 48 },
	{ id: 165, name: "SP 2.3: Analyze Peer Review Data", 
		summary: "Analyze data about the preparation, conduct, and results of the peer reviews.", 
		description: '',
	 	specific_goal_id: 48 },
	{ id: 166, name: "SP 3.1: Perform Verification", 
		summary: "Perform verification on selected work products.", 
		description: 'Verifying products and work products incrementally promotes early detection of problems and can result in the early removal of defects. The results of verification save the considerable cost of fault isolation and rework associated with troubleshooting problems.',
	 	specific_goal_id: 49 },
	{ id: 167, name: "SP 3.2: Analyze Verification Results", 
		summary: "Analyze results of all verification activities.", 
		description: 'Actual results should be compared to established verification criteria to determine acceptability.
		
The results of the analysis are recorded as evidence that verification was conducted.

For each work product, all available verification results are incrementally analyzed to ensure that requirements have been met. Since a peer review is one of several verification methods, peer review data should be included in this analysis activity to ensure that verification results are analyzed sufficiently.

Analysis reports or “as-run” method documentation can also indicate that bad verification results are due to method problems, criteria problems, or a verification environment problem.',
	 	specific_goal_id: 49 }
	])

generic_practice_elaboration = GenericPracticeElaboration.create([
	{ id: 1,   process_area_id: 21, generic_practice_id: 2, 
		gp_elaboration:  "This policy establishes organizational expectations for identifying and systematically addressing causal analysis of selected outcomes." },
	{ id: 2,   process_area_id: 1,  generic_practice_id: 2, 
		gp_elaboration:  "This policy establishes organizational expectations for establishing and maintaining baselines, tracking and controlling changes to work products (under configuration management), and establishing and maintaining integrity of the baselines." },
	{ id: 3,   process_area_id: 8,  generic_practice_id: 2, 
		gp_elaboration:  "This policy establishes organizational expectations for selectively analyzing possible decisions using a formal evaluation process that evaluates identified alternatives against established criteria. The policy should also provide guidance on which decisions require a formal evaluation process." }, 
	{ id: 4,   process_area_id: 9,  generic_practice_id: 2, 
		gp_elaboration:  "This policy establishes organizational expectations for establishing and maintaining the project’s defined process from project startup through the life of the project, using the project’s defined process in managing the project, and coordinating and collaborating with relevant stakeholders." }, 
	{ id: 5,   process_area_id: 2,  generic_practice_id: 2, 
		gp_elaboration:  "This policy establishes organizational expectations for aligning measurement objectives and activities with identified information needs and project, organizational, or business objectives and for providing measurement results." }, 
	{ id: 6,   process_area_id: 10, generic_practice_id: 2, 
		gp_elaboration:  "This policy establishes organizational expectations for establishing and maintaining a set of standard processes for use by the organization, making organizational process assets available across the organization, and establishing rules and guidelines for teams." }, 
	{ id: 7,   process_area_id: 11, generic_practice_id: 2, 
		gp_elaboration:  "This policy establishes organizational expectations for determining process improvement opportunities for the processes being used and for planning, implementing, and deploying process improvements across the organization." }, 
	{ id: 8,   process_area_id: 22, generic_practice_id: 2, 
		gp_elaboration:  "This policy establishes organizational expectations for analyzing the organization’s business performance using statistical and other quantitative techniques to determine performance shortfalls, and identifying and deploying process and technology improvements that contribute to meeting quality and process performance objectives." },
	{ id: 9,   process_area_id: 19, generic_practice_id: 2, 
		gp_elaboration:  "This policy establishes organizational expectations for establishing and maintaining process performance baselines and process performance models for the organization’s set of standard processes." },
	{ id: 10,  process_area_id: 12, generic_practice_id: 2, 
		gp_elaboration:  "This policy establishes organizational expectations for identifying the strategic training needs of the organization and providing that training." },
	{ id: 11,  process_area_id: 13, generic_practice_id: 2, 
		gp_elaboration:  "This policy establishes organizational expectations for developing product integration strategies, procedures, and an environment; ensuring interface compatibility among product components; assembling the product components; and delivering the product and product components." },
	{ id: 12,  process_area_id: 3,  generic_practice_id: 2, 
		gp_elaboration:  "This policy establishes organizational expectations for monitoring project progress and performance against the project plan and managing corrective action to closure when actual or results deviate significantly from the plan." },
	{ id: 13,  process_area_id: 4,  generic_practice_id: 2, 
		gp_elaboration:  "This policy establishes organizational expectations for estimating the planning parameters, making internal and external commitments, and developing the plan for managing the project." },
	{ id: 14,  process_area_id: 5,  generic_practice_id: 2, 
		gp_elaboration:  "This policy establishes organizational expectations for objectively evaluating whether processes and associated work products adhere to applicable process descriptions, standards, and procedures; and ensuring that noncompliance is addressed. 

This policy also establishes organizational expectations for process and product quality assurance being in place for all projects. Process and product quality assurance must possess sufficient independence from project management to provide objectivity in identifying and reporting noncompliance issues." },
	{ id: 15,  process_area_id: 20, generic_practice_id: 2, 
		gp_elaboration:  "This policy establishes organizational expectations for using statistical and other quantitative techniques and historical data when: establishing quality and process performance objectives, composing the project’s defined process, selecting subprocess attributes critical to understanding process performance, monitoring subprocess and project performance, and performing root cause analysis to address process performance deficiencies. In particular, this policy establishes organizational expectations for use of process performance measures, baselines, and models." },
	{ id: 16,  process_area_id: 14, generic_practice_id: 2, 
		gp_elaboration:  "This policy establishes organizational expectations for collecting stakeholder needs, formulating product and product component requirements, and analyzing and validating those requirements." },
	{ id: 17,  process_area_id: 6,  generic_practice_id: 2, 
		gp_elaboration:  "This policy establishes organizational expectations for managing requirements and identifying inconsistencies between the requirements and the project plans and work products." },
	{ id: 18,  process_area_id: 15, generic_practice_id: 2, 
		gp_elaboration:  "This policy establishes organizational expectations for defining a risk management strategy and identifying, analyzing, and mitigating risks." },
	{ id: 19,  process_area_id: 7,  generic_practice_id: 2, 
		gp_elaboration:  "This policy establishes organizational expectations for establishing, maintaining, and satisfying supplier agreements." },
	{ id: 20,  process_area_id: 16, generic_practice_id: 2, 
		gp_elaboration:  "This policy establishes organizational expectations for addressing the iterative cycle in which product or product component solutions are selected, designs are developed, and designs are implemented." },
	{ id: 21,  process_area_id: 17, generic_practice_id: 2, 
		gp_elaboration:  "This policy establishes organizational expectations for selecting products and product components for validation; for selecting validation methods; and for establishing and maintaining validation procedures, criteria, and environments that ensure the products and product components satisfy end user needs in their intended operating environment." },
	{ id: 22,  process_area_id: 18, generic_practice_id: 2, 
		gp_elaboration:  "This policy establishes organizational expectations for establishing and maintaining verification methods, procedures, criteria, and the verification environment, as well as for performing peer reviews and verifying selected work products." },
	{ id: 23,  process_area_id: 21, generic_practice_id: 3, 
		gp_elaboration:  "This plan for performing the causal analysis and resolution process can be included in (or referenced by) the project plan, which is described in the Project Planning process area. This plan differs from the action proposals and associated action plans described in several specific practices in this process area. The plan called for in this generic practice would address the project’s overall causal analysis and resolution process (perhaps tailored from a standard process maintained by the organization). In contrast, the process action proposals and associated action items address the activities needed to address a specific root cause under study." },
	{ id: 24,  process_area_id: 1,  generic_practice_id: 3, 
		gp_elaboration:  "This plan for performing the configuration management process can be included in (or referenced by) the project plan, which is described in the Project Planning process area." },
	{ id: 25,  process_area_id: 8,  generic_practice_id: 3, 
		gp_elaboration:  "This plan for performing the decision analysis and resolution process can be included in (or referenced by) the project plan, which is described in the Project Planning process area." }, 
	{ id: 26,  process_area_id: 9,  generic_practice_id: 3, 
		gp_elaboration:  "This plan for the integrated project management process unites the planning for the project planning and monitor and control processes. The planning for performing the planning related practices in Integrated Project Management is addressed as part of planning the project planning process. This plan for performing the monitor-and-control related practices in Integrated Project Management can be included in (or referenced by) the project plan, which is described in the Project Planning process area." }, 
	{ id: 27,  process_area_id: 2,  generic_practice_id: 3, 
		gp_elaboration:  "This plan for performing the measurement and analysis process can be included in (or referenced by) the project plan, which is described in the Project Planning process area." }, 
	{ id: 28,  process_area_id: 10, generic_practice_id: 3, 
		gp_elaboration:  "This plan for performing the organizational process definition process can be part of (or referenced by) the organization’s process improvement plan." }, 
	{ id: 29,  process_area_id: 11, generic_practice_id: 3, 
		gp_elaboration:  "This plan for performing the organizational process focus process, which is often called “the process improvement plan,” differs from the process action plans described in specific practices in this process area. The plan called for in this generic practice addresses the comprehensive planning for all of the specific practices in this process area, from establishing organizational process needs through incorporating process related experiences into organizational process assets." }, 
	{ id: 30,  process_area_id: 22, generic_practice_id: 3, 
		gp_elaboration:  "This plan for performing the organizational performance management process differs from the deployment plans described in a specific practice in this process area. The plan called for in this generic practice addresses the comprehensive planning for all of the specific practices in this process area, from maintaining business objectives to evaluating improvement effects. In contrast, the deployment plans called for in the specific practice would address the planning needed for the deployment of selected improvements." },
	{ id: 31,  process_area_id: 19, generic_practice_id: 3, 
		gp_elaboration:  "This plan for performing the organizational process performance process can be included in (or referenced by) the organization’s process improvement plan, which is described in the Organizational Process Focus process area. Or it may be documented in a separate plan that describes only the plan for the organizational process performance process." },
	{ id: 32,  process_area_id: 12, generic_practice_id: 3, 
		gp_elaboration:  "This plan for performing the organizational training process differs from the tactical plan for organizational training described in a specific practice in this process area. The plan called for in this generic practice addresses the comprehensive planning for all of the specific practices in this process area, from establishing strategic training needs through assessing the effectiveness of organizational training. In contrast, the organizational training tactical plan called for in the specific practice of this process area addresses the periodic planning for the delivery of training offerings." },
	{ id: 33,  process_area_id: 13, generic_practice_id: 3, 
		gp_elaboration:  "This plan for performing the product integration process addresses the comprehensive planning for all of the specific practices in this process area, from the preparation for product integration all the way through to the delivery of the final product. 

This plan for performing the product integration process can be part of (or referenced by) the project plan as described in the Project Planning process area." },
	{ id: 34,  process_area_id: 3,  generic_practice_id: 3, 
		gp_elaboration:  "This plan for performing the project monitoring and control process can be part of (or referenced by) the project plan, as described in the Project Planning process area." },
	{ id: 35,  process_area_id: 4,  generic_practice_id: 3, 
		gp_elaboration:  "Refer to Table 6.2 in Generic Goals and Generic Practices for more information about the relationship between generic practice 2.2 and the Project Planning process area." },
	{ id: 36,  process_area_id: 5,  generic_practice_id: 3, 
		gp_elaboration:  "This plan for performing the process and product quality assurance process can be included in (or referenced by) the project plan, which is described in the Project Planning process area." },
	{ id: 37,  process_area_id: 20, generic_practice_id: 3, 
		gp_elaboration:  "This plan for performing the quantitative project management process can be included in (or referenced by) the project plan, which is described in the Project Planning process area." },
	{ id: 38,  process_area_id: 14, generic_practice_id: 3, 
		gp_elaboration:  "This plan for performing the requirements development process can be part of (or referenced by) the project plan as described in the Project Planning process area." },
	{ id: 39,  process_area_id: 6,  generic_practice_id: 3, 
		gp_elaboration:  "This plan for performing the requirements management process can be part of (or referenced by) the project plan as described in the Project Planning process area." },
	{ id: 40,  process_area_id: 15, generic_practice_id: 3, 
		gp_elaboration:  "This plan for performing the risk management process can be included in (or referenced by) the project plan, which is described in the Project Planning process area. The plan called for in this generic practice addresses the comprehensive planning for all of the specific practices in this process area. In particular, this plan provides the overall approach for risk mitigation, but is distinct from mitigation plans (including contingency plans) for specific risks. In contrast, the risk mitigation plans called for in the specific practices of this process area addresses more focused items such as the levels that trigger risk handling activities." },
	{ id: 41,  process_area_id: 7,  generic_practice_id: 3, 
		gp_elaboration:  "Portions of this plan for performing the supplier agreement management process can be part of (or referenced by) the project plan as described in the Project Planning process area. Often, however, some portions of the plan reside outside of the project with a group such as contract management." },
	{ id: 42,  process_area_id: 16, generic_practice_id: 3, 
		gp_elaboration:  "This plan for performing the technical solution process can be part of (or referenced by) the project plan as described in the Project Planning process area." },
	{ id: 43,  process_area_id: 17, generic_practice_id: 3, 
		gp_elaboration:  "This plan for performing the validation process can be included in (or referenced by) the project plan, which is described in the Project Planning process area." },
	{ id: 44,  process_area_id: 18, generic_practice_id: 3, 
		gp_elaboration:  "This plan for performing the verification process can be included in (or referenced by) the project plan, which is described in the Project Planning process area." },
	{ id: 45,  process_area_id: 21, generic_practice_id: 4, 
		gp_elaboration:  "Examples of resources provided include the following: 
	* Database management systems 
	* Process modeling tools
	* Statistical analysis packages" },
	{ id: 46,  process_area_id: 1,  generic_practice_id: 4, 
		gp_elaboration:  "Examples of resources provided include the following: 
	* Configuration management tools 
	* Data management tools 
 	* Archiving and reproduction tools 
	* Database management systems" },
	{ id: 47,  process_area_id: 8,  generic_practice_id: 4, 
		gp_elaboration:  "Examples of resources provided include the following: 
	* Simulators and modeling tools 
	* Prototyping tools 
	* Tools for conducting surveys" }, 
	{ id: 48,  process_area_id: 9,  generic_practice_id: 4, 
		gp_elaboration:  "Examples of resources provided include the following: 
	* Problem tracking and trouble reporting packages 
	* Groupware 
	* Video conferencing 
	* Integrated decision database 
	* Integrated product support environments " }, 
	{ id: 49,  process_area_id: 2,  generic_practice_id: 4, 
		gp_elaboration:  "A Staff with appropriate expertise provide support for measurement and analysis activities. A measurement group with such a role may exist. 

	Examples of resources provided include the following: 
		* Statistical packages 
		* Packages that support data collection over networks " }, 
	{ id: 50,  process_area_id: 10, generic_practice_id: 4, 
		gp_elaboration:  "A process group typically manages organizational process definition activities. This group typically is staffed by a core of professionals whose primary responsibility is coordinating organizational process improvement. 

	This group is supported by process owners and people with expertise in various disciplines such as the following: 
		* Project management 
		* The appropriate engineering disciplines 
		* Configuration management 
		* Quality assurance" }, 
	{ id: 51,  process_area_id: 11, generic_practice_id: 4, 
		gp_elaboration:  "Examples of resources provided include the following: 
	* Database management systems 
	* Process improvement tools 
	* Web page builders and browsers 
	* Groupware 
	* Quality improvement tools (e.g., cause-and-effect diagrams, affinity diagrams, Pareto charts)" }, 
	{ id: 52,  process_area_id: 22, generic_practice_id: 4, 
		gp_elaboration:  "Examples of resources provided include the following: 
	* Simulation packages 
	* Prototyping tools 
	* Statistical packages 
	* Dynamic systems modeling 
	* Subscriptions to online technology databases and publications 
	* Process modeling tools" },
	{ id: 53,  process_area_id: 19, generic_practice_id: 4, 
		gp_elaboration:  "Special expertise in statistical and other quantitative techniques may be needed to establish process performance baselines for the organization’s set of standard processes. 

	Examples of resources provided include the following: 
		* Database management systems 
		* System dynamics models 
		* Process modeling tools 
		* Statistical analysis packages 
		* Problem tracking packages" },
	{ id: 54,  process_area_id: 12, generic_practice_id: 4, 
		gp_elaboration:  "Examples of resources provided include the following:  
	* Subject matter experts 
	* Curriculum designers 
	* Instructional designers 
	* Instructors 
	* Training administrators 
	* Special facilities may be required for training. When necessary, the facilities required for the activities in the Organizational Training process area are developed or purchased. 
	* Examples of resources provided include the following: 
	* Instruments for analyzing training needs 
	*	Workstations to be used for training 
	* Instructional design tools 
 	* Packages for developing presentation materials" },
	{ id: 55,  process_area_id: 13, generic_practice_id: 4, 
		gp_elaboration:  "Product component interface coordination can be accomplished with an Interface Control Working Group consisting of people who represent external and internal interfaces. Such groups can be used to elicit needs for interface requirements development. 

Special facilities may be required for assembling and delivering the product. When necessary, the facilities required for the activities in the Product Integration process area are developed or purchased. 

	Examples of resources provided include the following: 
		* Prototyping tools 
		* Analysis tools 
		* Simulation tools 
		* Interface management tools 
	 	* Assembly tools (e.g., compilers, make files, joining tools, jigs, fixtures)" },
	{ id: 56,  process_area_id: 3,  generic_practice_id: 4, 
		gp_elaboration:  "Examples of resources provided include the following: 
	* Cost tracking systems 
	* Effort reporting systems 
	* Action item tracking systems 
	* Project management and scheduling programs" },
	{ id: 57,  process_area_id: 4,  generic_practice_id: 4, 
		gp_elaboration:  "Special expertise, equipment, and facilities in project planning may be required. Special expertise in project planning can include the following: 
	* Experienced estimators 
	* Schedulers 
	* Technical experts in applicable areas (e.g., product domain, technology)" },
	{ id: 58,  process_area_id: 5,  generic_practice_id: 4, 
		gp_elaboration:  "Examples of resources provided include the following: 
	* Evaluation tools 
	* Noncompliance tracking tools" },
	{ id: 59,  process_area_id: 20, generic_practice_id: 4, 
		gp_elaboration:  "Special expertise in statistics and its use in analyzing process performance may be needed to define the analytic techniques used in quantitative management. Special expertise in statistics can also be needed for analyzing and interpreting the measures resulting from statistical analyses; however, teams need sufficient expertise to support a basic understanding of their process performance as they perform their daily work. 

	Examples of resources provided include the following: 
		* Statistical analysis packages 
		* Statistical process and quality control packages 
		* Scripts and tools that assist teams in analyzing their own process performance with minimal need for additional expert assistance" },
	{ id: 60,  process_area_id: 14, generic_practice_id: 4, 
		gp_elaboration:  "Special expertise in the application domain, methods for eliciting stakeholder needs, and methods and tools for specifying and analyzing customer, product, and product component requirements may be required. 

	Examples of resources provided include the following: 
		* Requirements specification tools 
		* Simulators and modeling tools 
		* Prototyping tools 
		* Scenario definition and management tools 
		* Requirements tracking tools" },
	{ id: 61,  process_area_id: 6,  generic_practice_id: 4, 
		gp_elaboration:  "Examples of resources provided include the following: 
	* Requirements tracking tools 
	* Traceability tools" },
	{ id: 62,  process_area_id: 15, generic_practice_id: 4, 
		gp_elaboration:  "Examples of resources provided include the following: 
	* Risk management databases 
	* Risk mitigation tools 
	* Prototyping tools 
	* Modeling and simulation tools" },
	{ id: 63,  process_area_id: 7,  generic_practice_id: 4, 
		gp_elaboration:  "Examples of resources provided include the following: 
	* Preferred supplier lists 
	* Requirements tracking tools 
	* Project management and scheduling programs" },
	{ id: 64,  process_area_id: 16, generic_practice_id: 4, 
		gp_elaboration:  "Special facilities may be required for developing, designing, and implementing solutions to requirements. When necessary, the facilities required for the activities in the Technical Solution process area are developed or purchased. 

	Examples of resources provided include the following: 
		* Design specification tools 
		* Simulators and modeling tools 
		* Prototyping tools 
		* Scenario definition and management tools 
		* Requirements tracking tools 
		* Interactive documentation tools" },
	{ id: 65,  process_area_id: 17, generic_practice_id: 4, 
		gp_elaboration:  "Special facilities may be required for validating the product or product components. When necessary, the facilities required for validation are developed or purchased. 

	Examples of resources provided include the following: 
		* Test management tools 
		* Test case generators 
		* Test coverage analyzers 
	 	* Simulators 
		* Load, stress, and performance testing tools" },
	{ id: 66,  process_area_id: 18, generic_practice_id: 4, 
		gp_elaboration:  "Special facilities may be required for verifying selected work products. When necessary, the facilities required for the activities in the Verification process area are developed or purchased. 

Certain verification methods can require special tools, equipment, facilities, and training (e.g., peer reviews can require meeting rooms and trained moderators; certain verification tests can require special test equipment and people skilled in the use of the equipment). 

	Examples of resources provided include the following: 
		* Test management tools 
		* Test case generators 
		* Test coverage analyzers 
		* Simulators" },
	{ id: 67,  process_area_id: 11, generic_practice_id: 5, 
		gp_elaboration:  "Two groups are typically established and assigned responsibility for process improvement: (1) a management steering committee for process improvement to provide senior management sponsorship, and (2) a process group to facilitate and manage the process improvement activities." },
	{ id: 68,  process_area_id: 5,  generic_practice_id: 5, 
		gp_elaboration:  "Responsibility is assigned to those who can perform process and product quality assurance evaluations with sufficient independence and objectivity to guard against subjectivity or bias." },
	{ id: 69,  process_area_id: 16, generic_practice_id: 5, 
		gp_elaboration:  "Appointing a lead or chief architect that oversees the technical solution and has authority over design decisions helps to maintain consistency in product design and evolution." }, 
	{ id: 70,  process_area_id: 21, generic_practice_id: 6, 
		gp_elaboration:  "Examples of training topics include the following: Quality management methods (e.g., root cause analysis)" },
	{ id: 71,  process_area_id: 1,  generic_practice_id: 6, 
		gp_elaboration:  "Examples of training topics include the following:  
		* Roles, responsibilities, and authority of the configuration management staff 
		* Configuration management standards, procedures, and methods 
		* Configuration library system" },
	{ id: 72,  process_area_id: 8,  generic_practice_id: 6, 
		gp_elaboration:  "Examples of training topics include the following: 
		* Formal decision analysis 
		* Methods for evaluating alternative solutions against criteria" }, 
	{ id: 73,  process_area_id: 9,  generic_practice_id: 6, 
		gp_elaboration:  "Examples of training topics include the following: 
		* Tailoring the organization’s set of standard processes to meet the needs of the project 
		* Managing the project based on the project’s defined process 
		* Using the organization’s measurement repository 
		* Using the organizational process assets 
		* Integrated management 
		* Intergroup coordination 
		* Group problem solving" }, 
	{ id: 74,  process_area_id: 2,  generic_practice_id: 6, 
		gp_elaboration:  "Examples of training topics include the following: 
		* Statistical techniques 
		* Data collection, analysis, and reporting processes 
		* Development of goal related measurements (e.g., Goal Question Metric)" }, 
	{ id: 75,  process_area_id: 10, generic_practice_id: 6, 
		gp_elaboration:  "Examples of training topics include the following: 
		* CMMI and other process and process improvement reference models 
		* Planning, managing, and monitoring processes 
		* Process modeling and definition 
		* Developing a tailorable standard process 
		* Developing work environment standards 
		* Ergonomics" }, 
	{ id: 76,  process_area_id: 11, generic_practice_id: 6, 
		gp_elaboration:  "Examples of training topics include the following: 
		* CMMI and other process improvement reference models 
		* Planning and managing process improvement 
		* Tools, methods, and analysis techniques 
		* Process modeling 
		* Facilitation techniques 
		* Change management" }, 
	{ id: 77,  process_area_id: 22, generic_practice_id: 6, 
		gp_elaboration:  "Examples of training topics include the following: 
		* Cost benefit analysis 
		* Planning, designing, and conducting pilots 
		* Technology transition 
		* Change management" },
	{ id: 78,  process_area_id: 19, generic_practice_id: 6, 
		gp_elaboration:  "Examples of training topics include the following: 
		* Process and process improvement modeling 
		* Statistical and other quantitative methods (e.g., estimating models, Pareto analysis, control charts)" },
	{ id: 79,  process_area_id: 12, generic_practice_id: 6, 
		gp_elaboration:  "Examples of training topics include the following: 
		* Knowledge and skills needs analysis 
		* Instructional design 
		* Instructional techniques (e.g., train the trainer) 
		* Refresher training on subject matter" },
	{ id: 80,  process_area_id: 13, generic_practice_id: 6, 
		gp_elaboration:  "Examples of training topics include the following: 
		* Application domain 
		* Product integration procedures and criteria 
		* Organization’s facilities for integration and assembly 
		* Assembly methods 
		* Packaging standards" },
	{ id: 81,  process_area_id: 3,  generic_practice_id: 6, 
		gp_elaboration:  "Examples of training topics include the following: 
		* Monitoring and control of projects 
		* Risk management 
		* Data management" },
	{ id: 82,  process_area_id: 4,  generic_practice_id: 6, 
		gp_elaboration:  "Examples of training topics include the following: 
		* Estimating 
		* Budgeting 
		* Negotiating 
		* Identifying and analyzing risks 
		* Managing data 
		* Planning 
		* Scheduling" },
	{ id: 83,  process_area_id: 5,  generic_practice_id: 6, 
		gp_elaboration:  "Examples of training topics include the following: 
		* Application domain 
		* Customer relations 
		* Process descriptions, standards, procedures, and methods for the project 
		* Quality assurance objectives, process descriptions, standards, procedures, methods, and tools" },
	{ id: 84,  process_area_id: 20, generic_practice_id: 6, 
		gp_elaboration:  "Examples of training topics include the following: 
		* Basic quantitative (including statistical) analyses that help in analyzing process performance, using historical data, and identifying when corrective action is warranted 
		* Process modeling and analysis 
		* Process measurement data selection, definition, and collection" },
	{ id: 85,  process_area_id: 14, generic_practice_id: 6, 
		gp_elaboration:  "Examples of training topics include the following: 
		* Application domain 
		* Requirements definition and analysis 
		* Requirements elicitation 
		* Requirements specification and modeling 
		* Requirements tracking" },
	{ id: 86,  process_area_id: 6,  generic_practice_id: 6, 
		gp_elaboration:  "Examples of training topics include the following: 
		* Application domain 
		* Requirements definition, analysis, review, and management 
		* Requirements management tools 
		* Configuration management 
		* Negotiation and conflict resolution" },
	{ id: 87,  process_area_id: 15, generic_practice_id: 6, 
		gp_elaboration:  "Examples of training topics include the following: 
		* Risk management concepts and activities (e.g., risk identification, evaluation, monitoring, mitigation) 
		* Measure selection for risk mitigation" },
	{ id: 88,  process_area_id: 7,  generic_practice_id: 6, 
		gp_elaboration:  "Examples of training topics include the following: 
		* Regulations and business practices related to negotiating and working with suppliers 
		* Acquisition planning and preparation 
		* Commercial off-the-shelf products acquisition 
		* Supplier evaluation and selection 
		* Negotiation and conflict resolution 
		* Supplier management 
		* Testing and transition of acquired products 
		* Receiving, storing, using, and maintaining acquired products" },
	{ id: 89,  process_area_id: 16, generic_practice_id: 6, 
		gp_elaboration:  "Examples of training topics include the following: 
		* Application domain of the product and product components 
		* Design methods 
		* Architecture methods 
		* Interface design 
		* Unit testing techniques 
		* Standards (e.g., product, safety, human factors, environmental)" },
	{ id: 90,  process_area_id: 17, generic_practice_id: 6, 
		gp_elaboration:  "Examples of training topics include the following: 
		* Application domain 
		* Validation principles, standards, and methods 
		* Intended-use environment" },
	{ id: 91,  process_area_id: 18, generic_practice_id: 6, 
		gp_elaboration:  "Examples of training topics include the following: 
		* Application or service domain 
		* Verification principles, standards, and methods (e.g., analysis, demonstration, inspection, test) 
		* Verification tools and facilities 
		* Peer review preparation and procedures 
		* Meeting facilitation" },
	{ id: 92,  process_area_id: 21, generic_practice_id: 7, 
		gp_elaboration:  "Examples of work products placed under control include the following: 
		* Action proposals 
		* Action plans 
		* Causal analysis and resolution records" },
	{ id: 93,  process_area_id: 1,  generic_practice_id: 7, 
		gp_elaboration:  "Examples of work products placed under control include the following: 
	* Access lists 
	* Change status reports 
	* Change request database 
	* CCB meeting minutes 
	* Archived baselines" },
	{ id: 94,  process_area_id: 8,  generic_practice_id: 7, 
		gp_elaboration:  "Examples of work products placed under control include the following: 
	* Guidelines for when to apply a formal evaluation process 
	* Evaluation reports containing recommended solutions" }, 
	{ id: 95,  process_area_id: 9,  generic_practice_id: 7, 
		gp_elaboration:  "Examples of work products placed under control include the following: 
	* The project’s defined process 
	* Project plans 
	* Other plans that affect the project 
	* Integrated plans 
	* Actual process and product measurements collected from the project 
	* Project’s shared vision 
	* Team structure 
	* Team charters" }, 
	{ id: 96,  process_area_id: 2,  generic_practice_id: 7, 
		gp_elaboration:  "Examples of work products placed under control include the following: 
	* Measurement objectives 
	* Specifications of base and derived measures 
	* Data collection and storage procedures 
	* Base and derived measurement data sets 
	* Analysis results and draft reports 
	* Data analysis tools" }, 
	{ id: 97,  process_area_id: 10, generic_practice_id: 7, 
		gp_elaboration:  "Examples of work products placed under control include the following: 
	* Organization’s set of standard processes 
	* Descriptions of lifecycle models 
	* Tailoring guidelines for the organization’s set of standard processes 
	* Definitions of the common set of product and process measures 
	* Organization’s measurement data 
	* Rules and guidelines for structuring and forming teams" }, 
	{ id: 98,  process_area_id: 11, generic_practice_id: 7, 
		gp_elaboration:  "Examples of work products placed under control include the following: 
	* Process improvement proposals 
	* Organization’s approved process action plans 
	* Training materials used for deploying organizational process assets 
	* Guidelines for deploying the organization’s set of standard processes on new projects 
	* Plans for the organization’s process appraisals" }, 
	{ id: 99,  process_area_id: 22, generic_practice_id: 7, 
		gp_elaboration:  "Examples of work products placed under control include the following: 
	* Documented lessons learned from improvement validation 
	* Deployment plans 
	* Revised improvement measures, objectives, priorities 
	* Updated process documentation and training material" },
	{ id: 100, process_area_id: 19, generic_practice_id: 7, 
		gp_elaboration:  "Examples of work products placed under control include the following: 
	* Organization’s quality and process performance objectives 
	* Definitions of the selected measures of process performance 
	* Baseline data on the organization’s process performance 
	* Process performance models" },
	{ id: 101, process_area_id: 12, generic_practice_id: 7, 
		gp_elaboration:  "Examples of work products placed under control include the following: 
	* Organizational training tactical plan 
	* Training records 
	* Training materials and supporting artifacts 
	* Instructor evaluation forms" },
	{ id: 102, process_area_id: 13, generic_practice_id: 7, 
		gp_elaboration:  "Examples of work products placed under control include the following: 
	* Acceptance documents for the received product components 
	* Evaluated assembled product and product components 
	* Product integration strategy 
	* Product integration procedures and criteria 
	* Updated interface description or agreement" },
	{ id: 103, process_area_id: 3,  generic_practice_id: 7, 
		gp_elaboration:  "Examples of work products placed under control include the following: 
	* Project schedules with status 
	* Project measurement data and analysis 
	* Earned value reports" },
	{ id: 104, process_area_id: 4,  generic_practice_id: 7, 
		gp_elaboration:  "Examples of work products placed under control include the following: 
	* Work breakdown structure 
	* Project plan 
	* Data management plan 
	* Stakeholder involvement plan" },
	{ id: 105, process_area_id: 5,  generic_practice_id: 7, 
		gp_elaboration:  "Examples of work products placed under control include the following: 
	* Noncompliance reports 
	* Evaluation logs and reports" },
	{ id: 106, process_area_id: 20, generic_practice_id: 7, 
		gp_elaboration:  "Examples of work products placed under control include the following: 
	* Subprocesses to be included in the project’s defined process 
	* Operational definitions of the measures, their collection points in the subprocesses, and how the integrity of the measures will be determined 
	* Collected measurements" },
	{ id: 107, process_area_id: 14, generic_practice_id: 7, 
		gp_elaboration:  "Examples of work products placed under control include the following: 
	* Customer functional and quality attribute requirements 
	* Definition of required functionality and quality attributes 
	* Product and product component requirements 
	* Interface requirements" },
	{ id: 108, process_area_id: 6,  generic_practice_id: 7, 
		gp_elaboration:  "Examples of work products placed under control include the following: 
	* Requirements 
	* Requirements traceability matrix" },
	{ id: 109, process_area_id: 15, generic_practice_id: 7, 
		gp_elaboration:  "Examples of work products placed under control include the following: 
	* Risk management strategy 
	* Identified risk items 
	* Risk mitigation plans" },
	{ id: 110, process_area_id: 7,  generic_practice_id: 7, 
		gp_elaboration:  "Examples of work products placed under control include the following: 
	* Statements of work, Supplier agreements, Memoranda of agreement, Subcontracts, Preferred supplier lists" },
	{ id: 111, process_area_id: 16, generic_practice_id: 7, 
		gp_elaboration:  "Examples of work products placed under control include the following: 
	* Product, product component, and interface designs 
	* Technical data packages 
	* Interface design documents 
	* Criteria for design and product component reuse 
	* Implemented designs (e.g., software code, fabricated product components) 
	* User, installation, operation, and maintenance documentation" },
	{ id: 112, process_area_id: 17, generic_practice_id: 7, 
		gp_elaboration:  "Examples of work products placed under control include the following: 
	* Lists of products and product components selected for validation 
	* Validation methods, procedures, and criteria 
	* Validation reports" },
	{ id: 113, process_area_id: 18, generic_practice_id: 7, 
		gp_elaboration:  "Examples of work products placed under control include the following: 
	* Verification procedures and criteria 
	* Peer review training material 
	* Peer review data 
	* Verification reports" },
    { id: 114, process_area_id: 21, generic_practice_id: 8, 
    	gp_elaboration:  "Examples of activities for stakeholder involvement include the following: 
	* Conducting causal analysis 
	* Assessing action proposals" },
	{ id: 115, process_area_id: 1,  generic_practice_id: 8, 
		gp_elaboration:  "Examples of activities for stakeholder involvement include the following: 
	* Establishing baselines 
	* Reviewing configuration management system reports and resolving issues 
	* Assessing the impact of changes for configuration items 
	* Performing configuration audits 
	* Reviewing results of configuration management audits" },
	{ id: 116, process_area_id: 8,  generic_practice_id: 8, 
		gp_elaboration:  "Examples of activities for stakeholder involvement include the following: 
	* Establishing guidelines for which issues are subject to a formal evaluation process 
	* Defining the issue to be addressed 
	* Establishing evaluation criteria 
	* Identifying and evaluating alternatives 
	* Selecting evaluation methods 
	* Selecting solutions" }, 
	{ id: 117, process_area_id: 9,  generic_practice_id: 8, 
		gp_elaboration:  "Examples of activities for stakeholder involvement include the following: 
	* Resolving issues about the tailoring of organizational process assets 
	* Resolving issues among the project plan and other plans that affect the project 
	* Reviewing project progress and performance to align with current and projected needs, objectives, and requirements 
	* Creating the project’s shared vision 
	* Defining the team structure for the project 
	* Populating teams" }, 
	{ id: 118, process_area_id: 2,  generic_practice_id: 8, 
		gp_elaboration:  "Examples of activities for stakeholder involvement include the following: 
	* Establishing measurement objectives and procedures 
	* Assessing measurement data 
	* Providing meaningful feedback to those who are responsible for providing the raw data on which the analysis and results depend" }, 
	{ id: 119, process_area_id: 10, generic_practice_id: 8, 
		gp_elaboration:  "Examples of activities for stakeholder involvement include the following: 
	* Reviewing the organization’s set of standard processes 
	* Reviewing the organization’s lifecycle models 
	* Resolving issues related to the tailoring guidelines 
	* Assessing definitions of the common set of process and product measures 
	* Reviewing work environment standards 
	* Establishing and maintaining empowerment mechanisms 
	* Establishing and maintaining organizational rules and guidelines for structuring and forming teams" }, 
	{ id: 120, process_area_id: 11, generic_practice_id: 8, 
		gp_elaboration:  "Examples of activities for stakeholder involvement include the following: 
	* Coordinating and collaborating on process improvement activities with process owners, those who are or will be performing the process, and support organizations (e.g., training staff, quality assurance representatives) 
	* Establishing the organizational process needs and objectives 
	* Appraising the organization’s processes 
	* Implementing process action plans 
	* Coordinating and collaborating on the execution of pilots to test selected improvements 
	* Deploying organizational process assets and changes to organizational process assets 
	* Communicating the plans, status, activities, and results related to planning, implementing, and deploying process improvements" }, 
	{ id: 121, process_area_id: 22, generic_practice_id: 8, 
		gp_elaboration:  "Examples of activities for stakeholder involvement include the following: 
	* Reviewing improvement proposals that could contribute to meeting business objectives 
	* Providing feedback to the organization on the readiness, status, and results of the improvement deployment activities. 
	* The feedback typically involves the following: 
	* Informing the people who submit improvement proposals about the disposition of their proposals 
	* Regularly communicating the results of comparing business performance against the business objectives 
	* Regularly informing relevant stakeholders about the plans and status for selecting and deploying improvements 
	* Preparing and distributing a summary of improvement selection and deployment activities" },
	{ id: 122, process_area_id: 19, generic_practice_id: 8, 
		gp_elaboration:  "Examples of activities for stakeholder involvement include the following: 
	* Establishing the organization’s quality and process performance objectives and their priorities 
	* Reviewing and resolving issues on the organization’s process performance baselines 
	* Reviewing and resolving issues on the organization’s process performance models" },
	{ id: 123, process_area_id: 12, generic_practice_id: 8, 
		gp_elaboration:  "Examples of activities for stakeholder involvement include the following: 
	* Establishing a collaborative environment for discussion of training needs and training effectiveness to ensure that the organization’s training needs are met 
	* Identifying training needs 
	* Reviewing the organizational training tactical plan 
	* Assessing training effectiveness" },
	{ id: 124, process_area_id: 13, generic_practice_id: 8, 
		gp_elaboration:  "Examples of activities for stakeholder involvement include the following: 
	* Establishing the product integration strategy 
	* Reviewing interface descriptions for completeness 
	* Establishing the product integration procedures and criteria 
	* Assembling and delivering the product and product components 
	* Communicating the results after evaluation 
	* Communicating new, effective product integration processes to give affected people the opportunity to improve their process performance" },
	{ id: 125, process_area_id: 3,  generic_practice_id: 8, 
		gp_elaboration:  "Examples of activities for stakeholder involvement include the following: 
	* Assessing the project against the plan 
	* Reviewing commitments and resolving issues 
	* Reviewing project risks 
	* Reviewing data management activities 
	* Reviewing project progress 
	* Managing corrective actions to closure" },
	{ id: 126, process_area_id: 4,  generic_practice_id: 8, 
		gp_elaboration:  "Examples of activities for stakeholder involvement include the following: 
	* Establishing estimates 
	* Reviewing and resolving issues on the completeness and correctness of the project risks 
	* Reviewing data management plans 
	* Establishing project plans 
	* Reviewing project plans and resolving issues on work and resource issues" },
	{ id: 127, process_area_id: 5,  generic_practice_id: 8, 
		gp_elaboration:  "Examples of activities for stakeholder involvement include the following: 
	* Establishing criteria for the objective evaluations of processes and work products 
	* Evaluating processes and work products 
	* Resolving noncompliance issues 
	* Tracking noncompliance issues to closure" },
	{ id: 128, process_area_id: 20, generic_practice_id: 8, 
		gp_elaboration:  "Examples of activities for stakeholder involvement include the following: 
	* Establishing project objectives 
	* Resolving issues among the project’s quality and process performance objectives 
	* Selecting analytic techniques to be used 
	* Evaluating the process performance of selected subprocesses 
	* Identifying and managing the risks in achieving the project’s quality and process performance objectives 
	* Identifying what corrective action should be taken" },
	{ id: 129, process_area_id: 14, generic_practice_id: 8, 
		gp_elaboration:  "Examples of activities for stakeholder involvement include the following: 
	* Reviewing the adequacy of requirements in meeting needs, expectations, constraints, and interfaces 
	* Establishing operational concepts and operational, sustainment, and development scenarios 
	* Assessing the adequacy of requirements 
	* Prioritizing customer requirements 
	* Establishing product and product component functional and quality attribute requirements 
	* Assessing product cost, schedule, and risk" },
	{ id: 130, process_area_id: 6,  generic_practice_id: 8, 
		gp_elaboration:  "Examples of activities for stakeholder involvement include the following: 
	* Resolving issues on the understanding of requirements 
	* Assessing the impact of requirements changes 
	* Communicating bidirectional traceability 
	* Identifying inconsistencies among requirements, project plans, and work products" },
	{ id: 131, process_area_id: 15, generic_practice_id: 8, 
		gp_elaboration:  "Examples of activities for stakeholder involvement include the following: 
	* Establishing a collaborative environment for free and open discussion of risk 
	* Reviewing the risk management strategy and risk mitigation plans 
	* Participating in risk identification, analysis, and mitigation activities 
	* Communicating and reporting risk management status" },
	{ id: 132, process_area_id: 7,  generic_practice_id: 8, 
		gp_elaboration:  "Examples of activities for stakeholder involvement include the following: 
	* Establishing criteria for evaluation of potential suppliers 
	* Reviewing potential suppliers 
	* Establishing supplier agreements 
	* Resolving issues with suppliers 
	* Reviewing supplier performance" },
	{ id: 133, process_area_id: 16, generic_practice_id: 8, 
		gp_elaboration:  "Examples of activities for stakeholder involvement include the following: 
	* Developing alternative solutions and selection criteria 
	* Obtaining approval on external interface specifications and design descriptions 
	* Developing the technical data package 
	* Assessing the make, buy, or reuse alternatives for product components 
	* Implementing the design" },
	{ id: 134, process_area_id: 17, generic_practice_id: 8, 
		gp_elaboration:  "Examples of activities for stakeholder involvement include the following: 
	* Selecting the products and product components to be validated 
	* Establishing the validation methods, procedures, and criteria 
	* Reviewing results of product and product component validation and resolving issues 
	* Resolving issues with the customers or end users 
	* Issues with the customers or end users are resolved particularly when there are significant deviations from their baseline needs. Examples of resolutions include the following: 
	* Waivers on the contract or agreement (what, when, and for which products) 
	* Additional in-depth studies, trials, tests, or evaluations 
	* Possible changes in the contracts or agreements" },
	{ id: 135, process_area_id: 18, generic_practice_id: 8, 
		gp_elaboration:  "Examples of activities for stakeholder involvement include the following: 
	* Selecting work products and methods for verification 
	* Establishing verification procedures and criteria 
	* Conducting peer reviews 
	* Assessing verification results and identifying corrective action" },
    { id: 136, process_area_id: 21, generic_practice_id: 9, 
    	gp_elaboration:  "Examples of measures and work products used in monitoring and controlling include the following: 
	* Number of outcomes analyzed 
	* Change in quality or process performance per instance of the causal analysis and resolution process 
	* Schedule of activities for implementing a selected action proposal" },
	{ id: 137, process_area_id: 1,  generic_practice_id: 9, 
		gp_elaboration:  "Examples of measures and work products used in monitoring and controlling include the following: 
	* Number of changes to configuration items 
	* Number of configuration audits conducted 
	* Schedule of CCB or audit activities" },
	{ id: 138, process_area_id: 8,  generic_practice_id: 9, 
		gp_elaboration:  "Examples of measures and work products used in monitoring and controlling include the following: 
	* Cost-to-benefit ratio of using formal evaluation processes 
	* Schedule for the execution of a trade study" }, 
	{ id: 139, process_area_id: 9,  generic_practice_id: 9, 
		gp_elaboration:  "Examples of measures and work products used in monitoring and controlling include the following: 
	* Number of changes to the project’s defined process 
	* Schedule and effort to tailor the organization’s set of standard processes 
	* Interface coordination issue trends (i.e., number identified and number closed) 
	* Schedule for project tailoring activities 
	* Project's shared vision usage and effectiveness 
	* Team structure usage and effectiveness 
	* Team charters usage and effectiveness" }, 
	{ id: 140, process_area_id: 2,  generic_practice_id: 9, 
		gp_elaboration:  "Examples of measures and work products used in monitoring and controlling include the following: 
	* Percentage of projects using progress and performance measures 
	* Percentage of measurement objectives addressed 
	* Schedule for collection and review of measurement data" }, 
	{ id: 141, process_area_id: 10, generic_practice_id: 9, 
		gp_elaboration:  "Examples of measures and work products used in monitoring and controlling include the following: 
	* Percentage of projects using the process architectures and process elements of the organization’s set of standard processes, Defect density of each process element of the organization’s set of standard processes, Schedule for development of a process or process change" }, 
	{ id: 142, process_area_id: 11, generic_practice_id: 9, 
		gp_elaboration:  "Examples of measures and work products used in monitoring and controlling include the following: 
	* Number of process improvement proposals submitted, accepted, or implemented 
	* CMMI maturity level or capability level earned 
	* Schedule for deployment of an organizational process asset 
	* Percentage of projects using the current organization’s set of standard processes (or tailored version of the current set) 
	* Issue trends associated with implementing the organization’s set of standard processes (i.e., number of issues identified, number closed) 
	* Progress toward achievement of process needs and objectives" }, 
	{ id: 143, process_area_id: 22, generic_practice_id: 9, 
		gp_elaboration:  "Examples of measures and work products used in monitoring and controlling include the following: 
	* Change in quality and process performance related to business objectives 
	* Schedule for implementing and validating an improvement 
	* Schedule for activities to deploy a selected improvement" },
	{ id: 144, process_area_id: 19, generic_practice_id: 9, 
		gp_elaboration:  "Examples of measures and work products used in monitoring and controlling include the following: 
	* Trends in the organization’s process performance with respect to changes in work products and task attributes (e.g., size growth, effort, schedule, quality) 
	* Schedule for collecting and reviewing measures to be used for establishing a process performance baseline" },
	{ id: 145, process_area_id: 12, generic_practice_id: 9, 
		gp_elaboration:  "Examples of measures and work products used in monitoring and controlling include the following: 
	* Number of training courses delivered (e.g., planned versus actual) 
	* Post-training evaluation ratings 
	* Training program quality survey ratings 
	* Schedule for delivery of training 
	* Schedule for development of a course" },
	{ id: 146, process_area_id: 13, generic_practice_id: 9, 
		gp_elaboration:  "Examples of measures and work products used in monitoring and controlling include the following: 
	* Product component integration profile (e.g., product component assemblies planned and performed, number of exceptions found) 
	* Integration evaluation problem report trends (e.g., number written and number closed) 
	* Integration evaluation problem report aging (i.e., how long each problem report has been open) 
	* Schedule for conduct of specific integration activities" },
	{ id: 147, process_area_id: 3,  generic_practice_id: 9, 
		gp_elaboration:  "Examples of measures and work products used in monitoring and controlling include the following: 
	* Number of open and closed corrective actions 
	* Schedule with status for monthly financial data collection, analysis, and reporting 
	* Number and types of reviews performed 
	* Review schedule (planned versus actual and slipped target dates) 
	* Schedule for collection and analysis of monitoring data" },
	{ id: 148, process_area_id: 4,  generic_practice_id: 9, 
		gp_elaboration:  "Examples of measures and work products used in monitoring and controlling include the following: 
	* Number of revisions to the plan 
	* Cost, schedule, and effort variance per plan revision 
	* Schedule for development and maintenance of program plans" },
	{ id: 149, process_area_id: 5,  generic_practice_id: 9, 
		gp_elaboration:  "Examples of measures and work products used in monitoring and controlling include the following: 
	* Variance of objective process evaluations planned and performed 
	* Variance of objective work product evaluations planned and performed 
	* Schedule for objective evaluations" },
	{ id: 150, process_area_id: 20, generic_practice_id: 9, 
		gp_elaboration:  "Examples of measures and work products used in monitoring and controlling include the following: 
	* Profile of subprocess attributes whose process performance provide insight about the risk to, or are key contributors to, achieving project objectives (e.g., number selected for monitoring through statistical techniques, number currently being monitored, number whose process performance is stable) 
	* Number of special causes of variation identified 
	* Schedule of data collection, analysis, and reporting activities in a measurement and analysis cycle as it relates to quantitative management activities" },
	{ id: 151, process_area_id: 14, generic_practice_id: 9, 
		gp_elaboration:  "Examples of measures and work products used in monitoring and controlling include the following: 
	* Cost, schedule, and effort expended for rework 
	* Defect density of requirements specifications 
	* Schedule for activities to develop a set of requirements" },
	{ id: 152, process_area_id: 6,  generic_practice_id: 9, 
		gp_elaboration:  "Examples of measures and work products used in monitoring and controlling include the following: 
	* Requirements volatility (percentage of requirements changed) 
	* Schedule for coordination of requirements 
	* Schedule for analysis of a proposed requirements change" },
	{ id: 153, process_area_id: 15, generic_practice_id: 9, 
		gp_elaboration:  "Examples of measures and work products used in monitoring and controlling include the following: 
	* Number of risks identified, managed, tracked, and controlled 
	* Risk exposure and changes to the risk exposure for each assessed risk, and as a summary percentage of management reserve 
	* Change activity for risk mitigation plans (e.g., processes, schedule, funding) 
	* Occurrence of unanticipated risks 
	* Risk categorization volatility 
	* Comparison of estimated versus actual risk mitigation effort and impact 
	* Schedule for risk analysis activities 
	* Schedule of actions for a specific mitigation" },
	{ id: 154, process_area_id: 7,  generic_practice_id: 9, 
		gp_elaboration:  "Examples of measures and work products used in monitoring and controlling include the following: 
	* Number of changes made to the requirements for the supplier 
	* Cost and schedule variance in accordance with the supplier agreement 
	* Schedule for selecting a supplier and establishing an agreement" },
	{ id: 155, process_area_id: 16, generic_practice_id: 9, 
		gp_elaboration:  "Examples of measures and work products used in monitoring and controlling include the following: 
	* Cost, schedule, and effort expended for rework 
	* Percentage of requirements addressed in the product or product component design 
	* Size and complexity of the product, product components, interfaces, and documentation 
	* Defect density of technical solutions work products 
	* Schedule for design activities" },
	{ id: 156, process_area_id: 17, generic_practice_id: 9, 
		gp_elaboration:  "Examples of measures and work products used in monitoring and controlling include the following: 
	* Number of validation activities completed (planned versus actual) 
	* Validation problem report trends (e.g., number written, number closed) 
	* Validation problem report aging (i.e., how long each problem report has been open) 
	* Schedule for a specific validation activity" },
	{ id: 157, process_area_id: 18, generic_practice_id: 9, 
		gp_elaboration:  "Examples of measures and work products used in monitoring and controlling include the following: 
	* Verification profile (e.g., the number of verifications planned and performed, and the defects found; or defects categorized by verification method or type) 
	* Number of defects detected by defect category 
	* Verification problem report trends (e.g., number written, number closed) 
	* Verification problem report status (i.e., how long each problem report has been open) 
	* Schedule for a specific verification activity 
	* Peer review effectiveness" },
    { id: 158, process_area_id: 21, generic_practice_id: 10, 
    	gp_elaboration: "Examples of activities reviewed include the following: 
	* Determining causes of outcomes 
	* Evaluating results of action plans 
	* Examples of work products reviewed include the following: 
	* Action proposals selected for implementation 
	* Causal analysis and resolution records" },
	{ id: 159, process_area_id: 1,  generic_practice_id: 10, 
		gp_elaboration: "Examples of activities reviewed include the following: 
	* Establishing baselines 
	* Tracking and controlling changes 
	* Establishing and maintaining the integrity of baselines 
	* Examples of work products reviewed include the following: 
	* Archives of baselines 
	* Change request database" },
	{ id: 160, process_area_id: 8,  generic_practice_id: 10, 
		gp_elaboration: "Examples of activities reviewed include the following: 
	* Evaluating alternatives using established criteria and methods 
	* Examples of work products reviewed include the following: 
	* Guidelines for when to apply a formal evaluation process 
	* Evaluation reports containing recommended solutions" }, 
	{ id: 161, process_area_id: 9,  generic_practice_id: 10, 
		gp_elaboration: "Examples of activities reviewed include the following: 
	* Establishing, maintaining, and using the project’s defined process 
	* Coordinating and collaborating with relevant stakeholders 
	* Using the project's shared vision 
	* Organizing teams 
	* Examples of work products reviewed include the following: 
	* Project’s defined process 
	* Project plans 
	* Other plans that affect the project 
	* Work environment standards 
	* Shared vision statements 
	* Team structure 
	* Team charters" }, 
	{ id: 162, process_area_id: 2,  generic_practice_id: 10, 
		gp_elaboration: "Examples of activities reviewed include the following: 
	* Aligning measurement and analysis activities 
	* Providing measurement results 
	* Examples of work products reviewed include the following: 
	* Specifications of base and derived measures 
	* Data collection and storage procedures 
	* Analysis results and draft reports" }, 
	{ id: 163, process_area_id: 10, generic_practice_id: 10, 
		gp_elaboration: "Examples of activities reviewed include the following: 
	* Establishing organizational process assets 
	* Determining rules and guidelines for structuring and forming teams 
	* Examples of work products reviewed include the following: 
	* Organization’s set of standard processes 
	* Descriptions of lifecycle models 
	* Tailoring guidelines for the organization’s set of standard processes 
	* Organization’s measurement data 
	* Empowerment rules and guidelines for people and teams 
	* Organizational process documentation" }, 
	{ id: 164, process_area_id: 11, generic_practice_id: 10, 
		gp_elaboration: "Examples of activities reviewed include the following: 
	* Determining process improvement opportunities 
	* Planning and coordinating process improvement activities 
	* Deploying the organization’s set of standard processes on projects at their startup 
	* Examples of work products reviewed include the following: 
	* Process improvement plans 
	* Process action plans 
	* Process deployment plans 
	* Plans for the organization’s process appraisals" }, 
	{ id: 165, process_area_id: 22, generic_practice_id: 10, 
		gp_elaboration: "Examples of activities reviewed include the following: 
	* Analyzing process performance data to determine the organization’s ability to meet identified business objectives 
	* Selecting improvements using quantitative analysis 
	* Deploying improvements 
	* Measuring effectiveness of the deployed improvements using statistical and other quantitative techniques 
	* Examples of work products reviewed include the following: 
	* Improvement proposals 
	* Deployment plans 
	* Revised improvement measures, objectives, priorities, and deployment plans 
	* Updated process documentation and training material" },
	{ id: 166, process_area_id: 19, generic_practice_id: 10, 
		gp_elaboration: "Examples of activities reviewed include the following: 
	* Establishing process performance baselines and models 
	* Examples of work products reviewed include the following: 
	* Process performance baselines 
	* Organization’s quality and process performance objectives 
	* Definitions of the selected measures of process performance" },
	{ id: 167, process_area_id: 12, generic_practice_id: 10, 
		gp_elaboration: "Examples of activities reviewed include the following: 
	* Identifying training needs and making training available 
	* Providing necessary training 
	* Examples of work products reviewed include the following: 
	* Organizational training tactical plan 
	* Training materials and supporting artifacts 
	* Instructor evaluation forms" },
	{ id: 168, process_area_id: 13, generic_practice_id: 10, 
		gp_elaboration: "Examples of activities reviewed include the following: 
	* Establishing and maintaining a product integration strategy 
	* Ensuring interface compatibility 
	* Assembling product components and delivering the product <
	* Examples of work products reviewed include the following: 
	* Product integration strategy 
	* Product integration procedures and criteria 
	* Acceptance documents for the received product components 
	* Assembled product and product components" },
	{ id: 169, process_area_id: 3,  generic_practice_id: 10, 
		gp_elaboration: "Examples of activities reviewed include the following: 
	* Monitoring project progress and performance against the project plan 
	* Managing corrective actions to closure 
	* Examples of work products reviewed include the following: 
	* Records of project progress and performance 
	* Project review results" },
	{ id: 170, process_area_id: 4,  generic_practice_id: 10, 
		gp_elaboration: "Examples of activities reviewed include the following: 
	* Establishing estimates 
	* Developing the project plan 
	* Obtaining commitments to the project plan 
	* Examples of work products reviewed include the following: 
	* WBS 
	* Project plan 
	* Data management plan 
	* Stakeholder involvement plan" },
	{ id: 171, process_area_id: 5,  generic_practice_id: 10, 
		gp_elaboration: "Examples of activities reviewed include the following: 
	* Objectively evaluating processes and work products 
	* Tracking and communicating noncompliance issues 
	* Examples of work products reviewed include the following: 
	* Noncompliance reports 
	* Evaluation logs and reports" },
	{ id: 172, process_area_id: 20, generic_practice_id: 10, 
		gp_elaboration: "Examples of activities reviewed include the following: 
	* Managing the project using quality and process performance objectives 
	* Managing selected subprocesses using statistical and other quantitative techniques 
	* Examples of work products reviewed include the following: 
	* Compositions of the project’s defined process 
	* Operational definitions of the measures 
	* Process performance analyses reports 
	* Collected measurements" },
	{ id: 173, process_area_id: 14, generic_practice_id: 10, 
		gp_elaboration: "Examples of activities reviewed include the following: 
	* Collecting stakeholder needs 
	* Formulating product and product component functional and quality attribute requirements 
	* Formulating architectural requirements that specify how product components are organized and designed to achieve particular end-to-end functional and quality attribute requirements 
	* Analyzing and validating product and product component requirements 
	* Examples of work products reviewed include the following: 
	* Product requirements 
	* Product component requirements 
	* Interface requirements 
	* Definition of required functionality and quality attributes 
	* Architecturally significant quality attribute requirements" },
	{ id: 174, process_area_id: 6,  generic_practice_id: 10, 
		gp_elaboration: "Examples of activities reviewed include the following: 
	* Managing requirements 
	* Ensuring alignment among project plans, work products, and requirements 
	* Examples of work products reviewed include the following: 
	* Requirements 
	* Requirements traceability matrix" },
	{ id: 175, process_area_id: 15, generic_practice_id: 10, 
		gp_elaboration: "Examples of activities reviewed include the following: 
	* Establishing and maintaining a risk management strategy 
	* Identifying and analyzing risks 
	* Mitigating risks 
	* Examples of work products reviewed include the following: 
	* Risk management strategy 
	* Risk mitigation plans" },
	{ id: 176, process_area_id: 7,  generic_practice_id: 10, 
		gp_elaboration: "Examples of activities reviewed include the following: 
	* Establishing and maintaining supplier agreements 
	* Satisfying supplier agreements 
	* Examples of work products reviewed include the following: 
	* Plan for supplier agreement management 
	* Supplier agreements" },
	{ id: 177, process_area_id: 16, generic_practice_id: 10, 
		gp_elaboration: "Examples of activities reviewed include the following: 
	* Selecting product component solutions 
	* Developing product and product component designs 
	* Implementing product component designs 
	* Examples of work products reviewed include the following: 
	* Technical data packages 
	* Product, product component, and interface designs 
	* Implemented designs (e.g., software code, fabricated product components) 
	* User, installation, operation, and maintenance documentation" },
	{ id: 178, process_area_id: 17, generic_practice_id: 10, 
		gp_elaboration: "Examples of activities reviewed include the following: 
	* Selecting the products and product components to be validated 
	* Establishing and maintaining validation methods, procedures, and criteria 
	* Validating products or product components 
	* Examples of work products reviewed include the following: 
	* Validation methods 
	* Validation procedures 
	* Validation criteria" },
	{ id: 179, process_area_id: 18, generic_practice_id: 10, 
		gp_elaboration: "Examples of activities reviewed include the following: 
	* Selecting work products for verification 
	* Establishing and maintaining verification procedures and criteria 
	* Performing peer reviews 
	* Verifying selected work products 
	* Examples of work products reviewed include the following: 
	* Verification procedures and criteria 
	* Peer review checklists 
	* Verification reports" },
 	{ id: 180, process_area_id: 11, generic_practice_id: 11, 
 		gp_elaboration: "These reviews are typically in the form of a briefing presented to the management steering committee by the process group and the process action teams. 
	*Examples of presentation topics include the following: 
	* Status of improvements being developed by process action teams 
	* Results of pilots 
	* Results of deployments 
	* Schedule status for achieving significant milestones (e.g., readiness for an appraisal, progress toward achieving a targeted organizational maturity level or capability level profile)" },
	{ id: 182, process_area_id: 22, generic_practice_id: 11, 
		gp_elaboration: "These reviews are typically in the form of a briefing presented to higher level management by those responsible for performance improvement. 
	* Examples of presentation topics include the following: 
	* Improvement areas identified from analysis of current performance compared to business objectives 
	* Results of process improvement elicitation and analysis activities 
	* Results from validation activities (e.g., pilots) compared to expected benefits 
	* Performance data after deployment of improvements 
	* Deployment cost, schedule, and risk 
	* Risks of not achieving business objectives" }, 
	{ id: 184, process_area_id: 6,  generic_practice_id: 11, 
		gp_elaboration: "Proposed changes to commitments to be made external to the organization are reviewed with higher level management to ensure that all commitments can be accomplished." }, 
	{ id: 185, process_area_id: 15, generic_practice_id: 11, 
		gp_elaboration: "Reviews of the project risk status are held on a periodic and event driven basis, with appropriate levels of management, to provide visibility into the potential for project risk exposure and appropriate corrective action. 
	* Typically, these reviews include a summary of the most critical risks, key risk parameters (such as likelihood and consequence of the risks), and the status of risk mitigation efforts." }, 
	{ id: 186, process_area_id: 21, generic_practice_id: 13, 
		gp_elaboration: "Examples of process related experiences include the following: 
	* Action proposals 
	* Number of action plans that are open and for how long 
	* Action plan status reports" },
	{ id: 187, process_area_id: 1,  generic_practice_id: 13, 
		gp_elaboration: "Examples of process related experiences include the following: 
	* Trends in the status of configuration items 
	* Configuration audit results 
	* Change request aging reports" },
	{ id: 188, process_area_id: 8,  generic_practice_id: 13, 
		gp_elaboration: "Examples process related experiences include the following: 
	* Number of alternatives considered 
	* Evaluation results 
	* Recommended solutions to address significant issues" }, 
	{ id: 189, process_area_id: 9,  generic_practice_id: 13, 
		gp_elaboration: "Examples of process related experiences include the following: 
	* Project’s defined process 
	* Number of tailoring options exercised by the project to create its defined process 
	* Interface coordination issue trends (i.e., number identified, number closed) 
	* Number of times the process asset library is accessed for assets related to project planning by project members 
	* Records of expenses related to holding face-to-face meetings versus holding meetings using collaborative equipment such as teleconferencing and videoconferencing 
	* Project shared vision 
	* Team charters" }, 
	{ id: 190, process_area_id: 2,  generic_practice_id: 13, 
		gp_elaboration: "Examples of process related experiences include the following: 
	* Data currency status 
	* Results of data integrity tests 
	* Data analysis reports" }, 
	{ id: 191, process_area_id: 10, generic_practice_id: 13, 
		gp_elaboration: "Examples of process related experiences include the following: 
	* Submission of lessons learned to the organization's process asset library 
	* Submission of measurement data to the organization's measurement repository 
	* Status of the change requests submitted to modify the organization's standard process 
	* Record of non-standard tailoring requests" }, 
	{ id: 192, process_area_id: 11, generic_practice_id: 13, 
		gp_elaboration: "Examples of process related experiences include the following: 
	* Criteria used to prioritize candidate process improvements 
	* Appraisal findings that address strengths and weaknesses of the organization's processes 
	* Status of improvement activities against the schedule 
	* Records of tailoring the organization’s set of standard processes and implementing them on identified projects" }, 
	{ id: 193, process_area_id: 22, generic_practice_id: 13, 
		gp_elaboration: "Examples of process related experiences include the following: 
	* Lessons learned captured from analysis of process performance data compared to business objectives 
	* Documented measures of the costs and benefits resulting from implementing and deploying improvements 
	* Report of a comparison of similar development processes to identify the potential for improving efficiency" },
	{ id: 194, process_area_id: 19, generic_practice_id: 13, 
		gp_elaboration: "Examples of process related experiences include the following: 
	* Process performance baselines 
	* Percentage of measurement data that is rejected because of inconsistencies with the process performance measurement definitions" },
	{ id: 195, process_area_id: 12, generic_practice_id: 13, 
		gp_elaboration: "Examples of process related experiences include the following: 
	* Results of training effectiveness surveys 
	* Training program performance assessment results 
	* Course evaluations 
	* Training requirements from an advisory group" },
	{ id: 196, process_area_id: 13, generic_practice_id: 13, 
		gp_elaboration: "Examples of process related experiences include the following: 
	* Records of the receipt of product components, exception reports, confirmation of configuration status, and results of readiness checking 
	* Percentage of total development effort spent in product integration (actual to date plus estimate to complete) 
	* Defects found in the product and test environment during product integration 
	* Problem reports resulting from product integration" },
	{ id: 197, process_area_id: 3,  generic_practice_id: 13, 
		gp_elaboration: "Examples of process related experiences include the following: 
	* Records of significant deviations 
	* Criteria for what constitutes a deviation 
	* Corrective action results" },
	{ id: 198, process_area_id: 4,  generic_practice_id: 13, 
		gp_elaboration: "Examples of process related experiences include the following: 
	* Project data library structure 
	* Project attribute estimates 
	* Risk impacts and probability of occurrence" },
	{ id: 199, process_area_id: 5,  generic_practice_id: 13, 
		gp_elaboration: "Examples of process related experiences include the following: 
	* Evaluation logs 
	* Quality trends 
	* Noncompliance reports 
	* Status reports of corrective actions 
	* Cost of quality reports for the project" },
	{ id: 200, process_area_id: 20, generic_practice_id: 13, 
		gp_elaboration: "Examples of process related experiences include the following: 
	* Records of quantitative management data from the project, including results from the periodic review of the process performance of the subprocesses selected for management against established interim objectives of the project 
	* Suggested improvements to process performance models" },
	{ id: 201, process_area_id: 14, generic_practice_id: 13, 
		gp_elaboration: "Examples of process related experiences include the following: 
	* List of the requirements for a product that are found to be ambiguous 
	* Number of requirements introduced at each phase of the project lifecycle 
	* Lessons learned from the requirements allocation process" },
	{ id: 202, process_area_id: 6,  generic_practice_id: 13, 
		gp_elaboration: "Examples of process related experiences include the following: 
	* Requirements traceability matrix 
	* Number of unfunded requirements changes after baselining 
	* Lessons learned in resolving ambiguous requirements" },
	{ id: 203, process_area_id: 15, generic_practice_id: 13, 
		gp_elaboration: "Examples of process related experiences include the following: 
	* Risk parameters 
	* Risk categories 
	* Risk status reports" },
	{ id: 204, process_area_id: 7,  generic_practice_id: 13, 
		gp_elaboration: "Examples of process related experiences include the following: 
	* Results of supplier reviews 
	* Trade studies used to select suppliers 
	* Revision history of supplier agreements 
	* Supplier performance reports" },
	{ id: 205, process_area_id: 16, generic_practice_id: 13, 
		gp_elaboration: "Examples of process related experiences include the following: 
	* Results of the make, buy, or reuse analysis 
	* Design defect density 
	* Results of applying new methods and tools" },
	{ id: 206, process_area_id: 17, generic_practice_id: 13, 
		gp_elaboration: "Examples of process related experiences include the following: 
	* Product component prototype 
	* Percentage of time the validation environment is available 
	* Number of product defects found through validation per development phase 
	* Validation analysis report" },
	{ id: 207, process_area_id: 18, generic_practice_id: 13, 
		gp_elaboration: "Examples of process related experiences include the following: 
	* Peer review records that include conduct time and average preparation time 
	* Number of product defects found through verification per development phase 
	* Verification and analysis report" }
	])

