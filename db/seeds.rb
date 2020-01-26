# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!([
	{
		name: 'キム兄',
		email: 'aa@aa',
		password: 'aaaaaa'
	},
	{
		name: 'ねっち',
		email: 'bb@bb',
		password: 'bbbbbb'
	},
	{
		name: 'セイ㈱',
		email: 'cc@cc',
		password: 'cccccc'
	},
	{
		name: '渡辺',
		email: 'dd@dd',
		password: 'dddddd'
	},
	{
		name: 'テラさん',
		email: 'ee@ee',
		password: 'eeeeee'
	}
])

	
Store.create!([
	{
		store_name: 'シーブル',
		store_number: '0120',
		email: 'a@a',
		phone_number: '042-378-4536',
		address: '東京都府中市住吉町',
		business_hours: '13:00~28:00',
		regular_holiday: '年末年始以外無休',
		password: 'aaaaaa'
	},
	{
		store_name: 'FAN　中河原店',
		store_number: '0703',
		email: 'b@b',
		phone_number: '042-378-1478',
		address: '東京都府中市四谷',
		business_hours: '17:00~29:00',
		regular_holiday: '年中無休',
		password: 'bbbbbb'
	},
	{
		store_name: 'ガレージ',
		store_number: '4649',
		email: 'c@c',
		phone_number: '042-378-1598',
		address: '東京都府中市若松町',
		business_hours: '17:00~24:00',
		regular_holiday: '毎週日曜日',
		password: 'cccccc'
	},
	{
		store_name: 'FIGARO R',
		store_number: '4869',
		email: 'd@d',
		phone_number: '042-378-1456',
		address: '東京都府中市宮西町',
		business_hours: '17:00~29:00',
		regular_holiday: '毎週木曜日',
		password: 'dddddd'
	},
	{
		store_name: 'SHURIO',
		store_number: '0311',
		email: 'e@e',
		phone_number: '042-378-3698',
		address: '東京都府中市寿町',
		business_hours: '17:00~26:00',
		regular_holiday: '毎週月曜日',
		password: 'eeeeee'
	},
	{
		store_name: 'e vu',
		store_number: '0909',
		email: 'f@f',
		phone_number: '042-378-2587',
		address: '東京都府中市是政',
		business_hours: '16:00~24:00',
		regular_holiday: '偶数週の月曜日',
		password: 'ffffff'
	}
])

#Facility.create!([
#	{
#		genre_id: '2',
#		store_id: '1',
#		darts_table: '',
#		billiard_table: '',
#		table_count: ''
#	},
#	{
#		genre_id: '',
#		store_id: '',
#		darts_table: '',
#		billiard_table: '',
#		table_count: ''
#	},
#	{
#		genre_id: '',
#		store_id: '',
#		darts_table: '',
#		billiard_table: '',
#		table_count: ''
#	},
#	{
#		genre_id: '',
#		store_id: '',
#		darts_table: '',
#		billiard_table: '',
#		table_count: ''
#	},
#	{
#		genre_id: '',
#		store_id: '',
#		darts_table: '',
#		billiard_table: '',
#		table_count: ''
#	},
#	{
#		genre_id: '',
#		store_id: '',
#		darts_table: '',
#		billiard_table: '',
#		table_count: ''
#	},
#	{
#		genre_id: '',
#		store_id: '',
#		darts_table: '',
#		billiard_table: '',
#		table_count: ''
#	},
#	{
#		genre_id: '',
#		store_id: '',
#		darts_table: '',
#		billiard_table: '',
#		table_count: ''
#	},
#	{
#		genre_id: '',
#		store_id: '',
#		darts_table: '',
#		billiard_table: '',
#		table_count: ''
#	},
#	{
#		genre_id: '',
#		store_id: '',
#		darts_table: '',
#		billiard_table: '',
#		table_count: ''
#	},
#	{
#		genre_id: '',
#		store_id: '',
#		darts_table: '',
#		billiard_table: '',
#		table_count: ''
#	},
#	{
#		genre_id: '',
#		store_id: '',
#		darts_table: '',
#		billiard_table: '',
#		table_count: ''
#	},
#	{
#		genre_id: '',
#		store_id: '',
#		darts_table: '',
#		billiard_table: '',
#		table_count: ''
#	},
#	{
#		genre_id: '',
#		store_id: '',
#		darts_table: '',
#		billiard_table: '',
#		table_count: ''
#	},
#	{
#		genre_id: '',
#		store_id: '',
#		darts_table: '',
#		billiard_table: '',
#		table_count: ''
#	},
#	{
#		genre_id: '',
#		store_id: '',
#		darts_table: '',
#		billiard_table: '',
#		table_count: ''
#	},
#	{
#		genre_id: '',
#		store_id: '',
#		darts_table: '',
#		billiard_table: '',
#		table_count: ''
#	},
#)
#