-- Iskandar_Governors
-- Author: HaoJun0823
-- DateCreated: 2019/2/15 15:58:17
--------------------------------------------------------------
CREATE TABLE "FateIskandarGovernorPromotionModifiers" (
		"GovernorPromotionType" TEXT NOT NULL,
		"ModifierId" TEXT NOT NULL,
		PRIMARY KEY(GovernorPromotionType, ModifierId),
		FOREIGN KEY (GovernorPromotionType) REFERENCES GovernorPromotions(GovernorPromotionType) ON DELETE CASCADE ON UPDATE CASCADE);

INSERT INTO FateIskandarGovernorPromotionModifiers (GovernorPromotionType,ModifierId) select * from GovernorPromotionModifiers 
where GovernorPromotionType in 
(select GovernorPromotion from GovernorPromotionSets where GovernorType = 'GOVERNOR_THE_DEFENDER');

UPDATE FateIskandarGovernorPromotionModifiers set GovernorPromotionType = 'GOVERNOR_PROMOTION_EI_MELLOI_II_DEFENDER';
INSERT INTO GovernorPromotionModifiers (GovernorPromotionType,ModifierId) select * from FateIskandarGovernorPromotionModifiers;
Delete From FateIskandarGovernorPromotionModifiers;

INSERT INTO FateIskandarGovernorPromotionModifiers (GovernorPromotionType,ModifierId) select * from GovernorPromotionModifiers 
where GovernorPromotionType in 
(select GovernorPromotion from GovernorPromotionSets where GovernorType = 'GOVERNOR_THE_BUILDER');

UPDATE FateIskandarGovernorPromotionModifiers set GovernorPromotionType = 'GOVERNOR_PROMOTION_EI_MELLOI_II_BUILDER';
INSERT INTO GovernorPromotionModifiers (GovernorPromotionType,ModifierId) select * from FateIskandarGovernorPromotionModifiers;
Delete From FateIskandarGovernorPromotionModifiers;

INSERT INTO FateIskandarGovernorPromotionModifiers (GovernorPromotionType,ModifierId) select * from GovernorPromotionModifiers 
where GovernorPromotionType in 
(select GovernorPromotion from GovernorPromotionSets where GovernorType = 'GOVERNOR_THE_RESOURCE_MANAGER');

UPDATE FateIskandarGovernorPromotionModifiers set GovernorPromotionType = 'GOVERNOR_PROMOTION_EI_MELLOI_II_RESOURCE_MANAGER';
INSERT INTO GovernorPromotionModifiers (GovernorPromotionType,ModifierId) select * from FateIskandarGovernorPromotionModifiers;
Delete From FateIskandarGovernorPromotionModifiers;

INSERT INTO FateIskandarGovernorPromotionModifiers (GovernorPromotionType,ModifierId) select * from GovernorPromotionModifiers 
where GovernorPromotionType in 
(select GovernorPromotion from GovernorPromotionSets where GovernorType = 'GOVERNOR_THE_EDUCATOR');

UPDATE FateIskandarGovernorPromotionModifiers set GovernorPromotionType = 'GOVERNOR_PROMOTION_EI_MELLOI_II_EDUCATOR';
INSERT INTO GovernorPromotionModifiers (GovernorPromotionType,ModifierId) select * from FateIskandarGovernorPromotionModifiers;
Delete From FateIskandarGovernorPromotionModifiers;

INSERT INTO FateIskandarGovernorPromotionModifiers (GovernorPromotionType,ModifierId) select * from GovernorPromotionModifiers 
where GovernorPromotionType in 
(select GovernorPromotion from GovernorPromotionSets where GovernorType = 'GOVERNOR_THE_MERCHANT');

UPDATE FateIskandarGovernorPromotionModifiers set GovernorPromotionType = 'GOVERNOR_PROMOTION_EI_MELLOI_II_MERCHANT';
INSERT INTO GovernorPromotionModifiers (GovernorPromotionType,ModifierId) select * from FateIskandarGovernorPromotionModifiers;
Delete From FateIskandarGovernorPromotionModifiers;

INSERT INTO FateIskandarGovernorPromotionModifiers (GovernorPromotionType,ModifierId) select * from GovernorPromotionModifiers 
where GovernorPromotionType in 
(select GovernorPromotion from GovernorPromotionSets where GovernorType = 'GOVERNOR_THE_CARDINAL');

UPDATE FateIskandarGovernorPromotionModifiers set GovernorPromotionType = 'GOVERNOR_PROMOTION_EI_MELLOI_II_CARDINAL';
INSERT INTO GovernorPromotionModifiers (GovernorPromotionType,ModifierId) select * from FateIskandarGovernorPromotionModifiers;
Delete From FateIskandarGovernorPromotionModifiers;

drop table FateIskandarGovernorPromotionModifiers;











-------------------------------
--Other
-------------------------------

INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
("TRAIT_FATE_ALEXANDER_KING", "TRAIT_FATE_ALEXANDER_KING_EXP");

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
("TRAIT_FATE_ALEXANDER_KING_EXP", "MODIFIER_PLAYER_UNIT_ADJUST_UNIT_EXPERIENCE_MODIFIER", 0, 0, 0, NULL, NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
("TRAIT_FATE_ALEXANDER_KING_EXP", "Amount", 100);
