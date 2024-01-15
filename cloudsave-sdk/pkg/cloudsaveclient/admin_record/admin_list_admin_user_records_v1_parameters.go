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

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
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

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
