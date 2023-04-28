// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package roles

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

// NewAdminGetRoleManagersV3Params creates a new AdminGetRoleManagersV3Params object
// with the default values initialized.
func NewAdminGetRoleManagersV3Params() *AdminGetRoleManagersV3Params {
	var ()
	return &AdminGetRoleManagersV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetRoleManagersV3ParamsWithTimeout creates a new AdminGetRoleManagersV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetRoleManagersV3ParamsWithTimeout(timeout time.Duration) *AdminGetRoleManagersV3Params {
	var ()
	return &AdminGetRoleManagersV3Params{

		timeout: timeout,
	}
}

// NewAdminGetRoleManagersV3ParamsWithContext creates a new AdminGetRoleManagersV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetRoleManagersV3ParamsWithContext(ctx context.Context) *AdminGetRoleManagersV3Params {
	var ()
	return &AdminGetRoleManagersV3Params{

		Context: ctx,
	}
}

// NewAdminGetRoleManagersV3ParamsWithHTTPClient creates a new AdminGetRoleManagersV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetRoleManagersV3ParamsWithHTTPClient(client *http.Client) *AdminGetRoleManagersV3Params {
	var ()
	return &AdminGetRoleManagersV3Params{
		HTTPClient: client,
	}
}

/*AdminGetRoleManagersV3Params contains all the parameters to send to the API endpoint
for the admin get role managers v3 operation typically these are written to a http.Request
*/
type AdminGetRoleManagersV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*RoleID
	  Role ID, should follow UUID version 4 without hyphen

	*/
	RoleID string
	/*After
	  The cursor that points to query data for the next page

	*/
	After *string
	/*Before
	  The cursor that points to query data for the previous page

	*/
	Before *string
	/*Limit
	  the maximum number of data that may be returned (1...100)

	*/
	Limit *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin get role managers v3 params
func (o *AdminGetRoleManagersV3Params) WithTimeout(timeout time.Duration) *AdminGetRoleManagersV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get role managers v3 params
func (o *AdminGetRoleManagersV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get role managers v3 params
func (o *AdminGetRoleManagersV3Params) WithContext(ctx context.Context) *AdminGetRoleManagersV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get role managers v3 params
func (o *AdminGetRoleManagersV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get role managers v3 params
func (o *AdminGetRoleManagersV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get role managers v3 params
func (o *AdminGetRoleManagersV3Params) WithHTTPClient(client *http.Client) *AdminGetRoleManagersV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get role managers v3 params
func (o *AdminGetRoleManagersV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get role managers v3 params
func (o *AdminGetRoleManagersV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithRoleID adds the roleID to the admin get role managers v3 params
func (o *AdminGetRoleManagersV3Params) WithRoleID(roleID string) *AdminGetRoleManagersV3Params {
	o.SetRoleID(roleID)
	return o
}

// SetRoleID adds the roleId to the admin get role managers v3 params
func (o *AdminGetRoleManagersV3Params) SetRoleID(roleID string) {
	o.RoleID = roleID
}

// WithAfter adds the after to the admin get role managers v3 params
func (o *AdminGetRoleManagersV3Params) WithAfter(after *string) *AdminGetRoleManagersV3Params {
	o.SetAfter(after)
	return o
}

// SetAfter adds the after to the admin get role managers v3 params
func (o *AdminGetRoleManagersV3Params) SetAfter(after *string) {
	o.After = after
}

// WithBefore adds the before to the admin get role managers v3 params
func (o *AdminGetRoleManagersV3Params) WithBefore(before *string) *AdminGetRoleManagersV3Params {
	o.SetBefore(before)
	return o
}

// SetBefore adds the before to the admin get role managers v3 params
func (o *AdminGetRoleManagersV3Params) SetBefore(before *string) {
	o.Before = before
}

// WithLimit adds the limit to the admin get role managers v3 params
func (o *AdminGetRoleManagersV3Params) WithLimit(limit *int64) *AdminGetRoleManagersV3Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin get role managers v3 params
func (o *AdminGetRoleManagersV3Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetRoleManagersV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param roleId
	if err := r.SetPathParam("roleId", o.RoleID); err != nil {
		return err
	}

	if o.After != nil {

		// query param after
		var qrAfter string
		if o.After != nil {
			qrAfter = *o.After
		}
		qAfter := qrAfter
		if qAfter != "" {
			if err := r.SetQueryParam("after", qAfter); err != nil {
				return err
			}
		}

	}

	if o.Before != nil {

		// query param before
		var qrBefore string
		if o.Before != nil {
			qrBefore = *o.Before
		}
		qBefore := qrBefore
		if qBefore != "" {
			if err := r.SetQueryParam("before", qBefore); err != nil {
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
