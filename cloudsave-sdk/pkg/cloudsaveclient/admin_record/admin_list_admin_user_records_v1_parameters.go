// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_record

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

// NewAdminListAdminUserRecordsV1Params creates a new AdminListAdminUserRecordsV1Params object
// with the default values initialized.
func NewAdminListAdminUserRecordsV1Params() *AdminListAdminUserRecordsV1Params {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &AdminListAdminUserRecordsV1Params{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminListAdminUserRecordsV1ParamsWithTimeout creates a new AdminListAdminUserRecordsV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminListAdminUserRecordsV1ParamsWithTimeout(timeout time.Duration) *AdminListAdminUserRecordsV1Params {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &AdminListAdminUserRecordsV1Params{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewAdminListAdminUserRecordsV1ParamsWithContext creates a new AdminListAdminUserRecordsV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminListAdminUserRecordsV1ParamsWithContext(ctx context.Context) *AdminListAdminUserRecordsV1Params {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &AdminListAdminUserRecordsV1Params{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewAdminListAdminUserRecordsV1ParamsWithHTTPClient creates a new AdminListAdminUserRecordsV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminListAdminUserRecordsV1ParamsWithHTTPClient(client *http.Client) *AdminListAdminUserRecordsV1Params {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &AdminListAdminUserRecordsV1Params{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*AdminListAdminUserRecordsV1Params contains all the parameters to send to the API endpoint
for the admin list admin user records v1 operation typically these are written to a http.Request
*/
type AdminListAdminUserRecordsV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game, only accept alphabet and numeric

	*/
	Namespace string
	/*UserID
	  user ID who own the record, should follow UUID version 4 without hyphen format

	*/
	UserID string
	/*Limit
	  the number of data retrieved in a page, default 25

	*/
	Limit *int64
	/*Offset
	  the number of offset, default 0

	*/
	Offset *int64
	/*Query
	  query, search admin player records by key

	*/
	Query *string
	/*Tags
	  filter list by tags, max 5 tags per request

	*/
	Tags []string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin list admin user records v1 params
func (o *AdminListAdminUserRecordsV1Params) WithTimeout(timeout time.Duration) *AdminListAdminUserRecordsV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin list admin user records v1 params
func (o *AdminListAdminUserRecordsV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin list admin user records v1 params
func (o *AdminListAdminUserRecordsV1Params) WithContext(ctx context.Context) *AdminListAdminUserRecordsV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin list admin user records v1 params
func (o *AdminListAdminUserRecordsV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin list admin user records v1 params
func (o *AdminListAdminUserRecordsV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin list admin user records v1 params
func (o *AdminListAdminUserRecordsV1Params) WithHTTPClient(client *http.Client) *AdminListAdminUserRecordsV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin list admin user records v1 params
func (o *AdminListAdminUserRecordsV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin list admin user records v1 params
func (o *AdminListAdminUserRecordsV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminListAdminUserRecordsV1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin list admin user records v1 params
func (o *AdminListAdminUserRecordsV1Params) WithNamespace(namespace string) *AdminListAdminUserRecordsV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin list admin user records v1 params
func (o *AdminListAdminUserRecordsV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin list admin user records v1 params
func (o *AdminListAdminUserRecordsV1Params) WithUserID(userID string) *AdminListAdminUserRecordsV1Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin list admin user records v1 params
func (o *AdminListAdminUserRecordsV1Params) SetUserID(userID string) {
	o.UserID = userID
}

// WithLimit adds the limit to the admin list admin user records v1 params
func (o *AdminListAdminUserRecordsV1Params) WithLimit(limit *int64) *AdminListAdminUserRecordsV1Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin list admin user records v1 params
func (o *AdminListAdminUserRecordsV1Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin list admin user records v1 params
func (o *AdminListAdminUserRecordsV1Params) WithOffset(offset *int64) *AdminListAdminUserRecordsV1Params {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin list admin user records v1 params
func (o *AdminListAdminUserRecordsV1Params) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithQuery adds the query to the admin list admin user records v1 params
func (o *AdminListAdminUserRecordsV1Params) WithQuery(query *string) *AdminListAdminUserRecordsV1Params {
	o.SetQuery(query)
	return o
}

// SetQuery adds the query to the admin list admin user records v1 params
func (o *AdminListAdminUserRecordsV1Params) SetQuery(query *string) {
	o.Query = query
}

// WithTags adds the tags to the admin list admin user records v1 params
func (o *AdminListAdminUserRecordsV1Params) WithTags(tags []string) *AdminListAdminUserRecordsV1Params {
	o.SetTags(tags)
	return o
}

// SetTags adds the tags to the admin list admin user records v1 params
func (o *AdminListAdminUserRecordsV1Params) SetTags(tags []string) {
	o.Tags = tags
}

// WriteToRequest writes these params to a swagger request
func (o *AdminListAdminUserRecordsV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
		return err
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

	valuesTags := o.Tags

	joinedTags := swag.JoinByFormat(valuesTags, "csv")
	// query array param tags
	if err := r.SetQueryParam("tags", joinedTags...); err != nil {
		return err
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
