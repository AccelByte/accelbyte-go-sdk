// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// NewAdminSearchUserV3Params creates a new AdminSearchUserV3Params object
// with the default values initialized.
func NewAdminSearchUserV3Params() *AdminSearchUserV3Params {
	var (
		includeTotalDefault = bool(false)
	)
	return &AdminSearchUserV3Params{
		IncludeTotal: &includeTotalDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminSearchUserV3ParamsWithTimeout creates a new AdminSearchUserV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminSearchUserV3ParamsWithTimeout(timeout time.Duration) *AdminSearchUserV3Params {
	var (
		includeTotalDefault = bool(false)
	)
	return &AdminSearchUserV3Params{
		IncludeTotal: &includeTotalDefault,

		timeout: timeout,
	}
}

// NewAdminSearchUserV3ParamsWithContext creates a new AdminSearchUserV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminSearchUserV3ParamsWithContext(ctx context.Context) *AdminSearchUserV3Params {
	var (
		includeTotalDefault = bool(false)
	)
	return &AdminSearchUserV3Params{
		IncludeTotal: &includeTotalDefault,

		Context: ctx,
	}
}

// NewAdminSearchUserV3ParamsWithHTTPClient creates a new AdminSearchUserV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminSearchUserV3ParamsWithHTTPClient(client *http.Client) *AdminSearchUserV3Params {
	var (
		includeTotalDefault = bool(false)
	)
	return &AdminSearchUserV3Params{
		IncludeTotal: &includeTotalDefault,
		HTTPClient:   client,
	}
}

/*AdminSearchUserV3Params contains all the parameters to send to the API endpoint
for the admin search user v3 operation typically these are written to a http.Request
*/
type AdminSearchUserV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*By
	  Search by given attribute, possible values are emailAddress, displayName, uniqueDisplayName, username and thirdPartyPlatform

	*/
	By *string
	/*EndDate
	  End Date, format YYYY-MM-DD

	*/
	EndDate *string
	/*IncludeTotal
	  A flag whether this request should include total count, default false

	*/
	IncludeTotal *bool
	/*Limit
	  the maximum number of data that may be returned (1...100), default 100

	*/
	Limit *int64
	/*Offset
	  Offset, default 0

	*/
	Offset *int64
	/*PlatformBy
	  Search platformBy given attribute, possible values are platformDisplayName

	*/
	PlatformBy *string
	/*PlatformID
	  Platform Id that want to be searched, supported values: steam, steamopenid, psn, xbox, epicgames, nintendo, oculus, aws cognito, facebook, google, discord, twitch, snapchat or amazon

	*/
	PlatformID *string
	/*Query
	  Query, can be either email address or display name

	*/
	Query *string
	/*RoleIds
	  comma separated role ids

	*/
	RoleIds *string
	/*SkipLoginQueue
	  A flag to filter users that are exempted from login queue. if skipLoginQueue parameter is not defined, search result will include both exempted and not exempted users

	*/
	SkipLoginQueue *bool
	/*StartDate
	  Start Date, format YYYY-MM-DD

	*/
	StartDate *string
	/*TestAccount
	  A flag to filter test account. if testAccount parameter is not defined, search result will include both real and test accounts

	*/
	TestAccount *bool

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin search user v3 params
func (o *AdminSearchUserV3Params) WithTimeout(timeout time.Duration) *AdminSearchUserV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin search user v3 params
func (o *AdminSearchUserV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin search user v3 params
func (o *AdminSearchUserV3Params) WithContext(ctx context.Context) *AdminSearchUserV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin search user v3 params
func (o *AdminSearchUserV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin search user v3 params
func (o *AdminSearchUserV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin search user v3 params
func (o *AdminSearchUserV3Params) WithHTTPClient(client *http.Client) *AdminSearchUserV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin search user v3 params
func (o *AdminSearchUserV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin search user v3 params
func (o *AdminSearchUserV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminSearchUserV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin search user v3 params
func (o *AdminSearchUserV3Params) WithNamespace(namespace string) *AdminSearchUserV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin search user v3 params
func (o *AdminSearchUserV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithBy adds the by to the admin search user v3 params
func (o *AdminSearchUserV3Params) WithBy(by *string) *AdminSearchUserV3Params {
	o.SetBy(by)
	return o
}

// SetBy adds the by to the admin search user v3 params
func (o *AdminSearchUserV3Params) SetBy(by *string) {
	o.By = by
}

// WithEndDate adds the endDate to the admin search user v3 params
func (o *AdminSearchUserV3Params) WithEndDate(endDate *string) *AdminSearchUserV3Params {
	o.SetEndDate(endDate)
	return o
}

// SetEndDate adds the endDate to the admin search user v3 params
func (o *AdminSearchUserV3Params) SetEndDate(endDate *string) {
	o.EndDate = endDate
}

// WithIncludeTotal adds the includeTotal to the admin search user v3 params
func (o *AdminSearchUserV3Params) WithIncludeTotal(includeTotal *bool) *AdminSearchUserV3Params {
	o.SetIncludeTotal(includeTotal)
	return o
}

// SetIncludeTotal adds the includeTotal to the admin search user v3 params
func (o *AdminSearchUserV3Params) SetIncludeTotal(includeTotal *bool) {
	o.IncludeTotal = includeTotal
}

// WithLimit adds the limit to the admin search user v3 params
func (o *AdminSearchUserV3Params) WithLimit(limit *int64) *AdminSearchUserV3Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin search user v3 params
func (o *AdminSearchUserV3Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin search user v3 params
func (o *AdminSearchUserV3Params) WithOffset(offset *int64) *AdminSearchUserV3Params {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin search user v3 params
func (o *AdminSearchUserV3Params) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithPlatformBy adds the platformBy to the admin search user v3 params
func (o *AdminSearchUserV3Params) WithPlatformBy(platformBy *string) *AdminSearchUserV3Params {
	o.SetPlatformBy(platformBy)
	return o
}

// SetPlatformBy adds the platformBy to the admin search user v3 params
func (o *AdminSearchUserV3Params) SetPlatformBy(platformBy *string) {
	o.PlatformBy = platformBy
}

// WithPlatformID adds the platformID to the admin search user v3 params
func (o *AdminSearchUserV3Params) WithPlatformID(platformID *string) *AdminSearchUserV3Params {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the admin search user v3 params
func (o *AdminSearchUserV3Params) SetPlatformID(platformID *string) {
	o.PlatformID = platformID
}

// WithQuery adds the query to the admin search user v3 params
func (o *AdminSearchUserV3Params) WithQuery(query *string) *AdminSearchUserV3Params {
	o.SetQuery(query)
	return o
}

// SetQuery adds the query to the admin search user v3 params
func (o *AdminSearchUserV3Params) SetQuery(query *string) {
	o.Query = query
}

// WithRoleIds adds the roleIds to the admin search user v3 params
func (o *AdminSearchUserV3Params) WithRoleIds(roleIds *string) *AdminSearchUserV3Params {
	o.SetRoleIds(roleIds)
	return o
}

// SetRoleIds adds the roleIds to the admin search user v3 params
func (o *AdminSearchUserV3Params) SetRoleIds(roleIds *string) {
	o.RoleIds = roleIds
}

// WithSkipLoginQueue adds the skipLoginQueue to the admin search user v3 params
func (o *AdminSearchUserV3Params) WithSkipLoginQueue(skipLoginQueue *bool) *AdminSearchUserV3Params {
	o.SetSkipLoginQueue(skipLoginQueue)
	return o
}

// SetSkipLoginQueue adds the skipLoginQueue to the admin search user v3 params
func (o *AdminSearchUserV3Params) SetSkipLoginQueue(skipLoginQueue *bool) {
	o.SkipLoginQueue = skipLoginQueue
}

// WithStartDate adds the startDate to the admin search user v3 params
func (o *AdminSearchUserV3Params) WithStartDate(startDate *string) *AdminSearchUserV3Params {
	o.SetStartDate(startDate)
	return o
}

// SetStartDate adds the startDate to the admin search user v3 params
func (o *AdminSearchUserV3Params) SetStartDate(startDate *string) {
	o.StartDate = startDate
}

// WithTestAccount adds the testAccount to the admin search user v3 params
func (o *AdminSearchUserV3Params) WithTestAccount(testAccount *bool) *AdminSearchUserV3Params {
	o.SetTestAccount(testAccount)
	return o
}

// SetTestAccount adds the testAccount to the admin search user v3 params
func (o *AdminSearchUserV3Params) SetTestAccount(testAccount *bool) {
	o.TestAccount = testAccount
}

// WriteToRequest writes these params to a swagger request
func (o *AdminSearchUserV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.By != nil {

		// query param by
		var qrBy string
		if o.By != nil {
			qrBy = *o.By
		}
		qBy := qrBy
		if qBy != "" {
			if err := r.SetQueryParam("by", qBy); err != nil {
				return err
			}
		}

	}

	if o.EndDate != nil {

		// query param endDate
		var qrEndDate string
		if o.EndDate != nil {
			qrEndDate = *o.EndDate
		}
		qEndDate := qrEndDate
		if qEndDate != "" {
			if err := r.SetQueryParam("endDate", qEndDate); err != nil {
				return err
			}
		}

	}

	if o.IncludeTotal != nil {

		// query param includeTotal
		var qrIncludeTotal bool
		if o.IncludeTotal != nil {
			qrIncludeTotal = *o.IncludeTotal
		}
		qIncludeTotal := swag.FormatBool(qrIncludeTotal)
		if qIncludeTotal != "" {
			if err := r.SetQueryParam("includeTotal", qIncludeTotal); err != nil {
				return err
			}
		}

	}

	if o.Limit != nil {

		// query param limit
		var qrLimit int64
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt64(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	if o.Offset != nil {

		// query param offset
		var qrOffset int64
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt64(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
				return err
			}
		}

	}

	if o.PlatformBy != nil {

		// query param platformBy
		var qrPlatformBy string
		if o.PlatformBy != nil {
			qrPlatformBy = *o.PlatformBy
		}
		qPlatformBy := qrPlatformBy
		if qPlatformBy != "" {
			if err := r.SetQueryParam("platformBy", qPlatformBy); err != nil {
				return err
			}
		}

	}

	if o.PlatformID != nil {

		// query param platformId
		var qrPlatformID string
		if o.PlatformID != nil {
			qrPlatformID = *o.PlatformID
		}
		qPlatformID := qrPlatformID
		if qPlatformID != "" {
			if err := r.SetQueryParam("platformId", qPlatformID); err != nil {
				return err
			}
		}

	}

	if o.Query != nil {

		// query param query
		var qrQuery string
		if o.Query != nil {
			qrQuery = *o.Query
		}
		qQuery := qrQuery
		if qQuery != "" {
			if err := r.SetQueryParam("query", qQuery); err != nil {
				return err
			}
		}

	}

	if o.RoleIds != nil {

		// query param roleIds
		var qrRoleIds string
		if o.RoleIds != nil {
			qrRoleIds = *o.RoleIds
		}
		qRoleIds := qrRoleIds
		if qRoleIds != "" {
			if err := r.SetQueryParam("roleIds", qRoleIds); err != nil {
				return err
			}
		}

	}

	if o.SkipLoginQueue != nil {

		// query param skipLoginQueue
		var qrSkipLoginQueue bool
		if o.SkipLoginQueue != nil {
			qrSkipLoginQueue = *o.SkipLoginQueue
		}
		qSkipLoginQueue := swag.FormatBool(qrSkipLoginQueue)
		if qSkipLoginQueue != "" {
			if err := r.SetQueryParam("skipLoginQueue", qSkipLoginQueue); err != nil {
				return err
			}
		}

	}

	if o.StartDate != nil {

		// query param startDate
		var qrStartDate string
		if o.StartDate != nil {
			qrStartDate = *o.StartDate
		}
		qStartDate := qrStartDate
		if qStartDate != "" {
			if err := r.SetQueryParam("startDate", qStartDate); err != nil {
				return err
			}
		}

	}

	if o.TestAccount != nil {

		// query param testAccount
		var qrTestAccount bool
		if o.TestAccount != nil {
			qrTestAccount = *o.TestAccount
		}
		qTestAccount := swag.FormatBool(qrTestAccount)
		if qTestAccount != "" {
			if err := r.SetQueryParam("testAccount", qTestAccount); err != nil {
				return err
			}
		}

	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
