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

// NewGetAdminUsersByRoleIDParams creates a new GetAdminUsersByRoleIDParams object
// with the default values initialized.
func NewGetAdminUsersByRoleIDParams() *GetAdminUsersByRoleIDParams {
	var ()
	return &GetAdminUsersByRoleIDParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetAdminUsersByRoleIDParamsWithTimeout creates a new GetAdminUsersByRoleIDParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetAdminUsersByRoleIDParamsWithTimeout(timeout time.Duration) *GetAdminUsersByRoleIDParams {
	var ()
	return &GetAdminUsersByRoleIDParams{

		timeout: timeout,
	}
}

// NewGetAdminUsersByRoleIDParamsWithContext creates a new GetAdminUsersByRoleIDParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetAdminUsersByRoleIDParamsWithContext(ctx context.Context) *GetAdminUsersByRoleIDParams {
	var ()
	return &GetAdminUsersByRoleIDParams{

		Context: ctx,
	}
}

// NewGetAdminUsersByRoleIDParamsWithHTTPClient creates a new GetAdminUsersByRoleIDParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetAdminUsersByRoleIDParamsWithHTTPClient(client *http.Client) *GetAdminUsersByRoleIDParams {
	var ()
	return &GetAdminUsersByRoleIDParams{
		HTTPClient: client,
	}
}

/*GetAdminUsersByRoleIDParams contains all the parameters to send to the API endpoint
for the get admin users by role id operation typically these are written to a http.Request
*/
type GetAdminUsersByRoleIDParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*After
	  The cursor that points to query data for the next page

	*/
	After *int64
	/*Before
	  The cursor that points to query data for the previous page

	*/
	Before *int64
	/*Limit
	  the maximum number of data that may be returned (1...100)

	*/
	Limit *int64
	/*RoleID
	  Role ID

	*/
	RoleID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get admin users by role id params
func (o *GetAdminUsersByRoleIDParams) WithTimeout(timeout time.Duration) *GetAdminUsersByRoleIDParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get admin users by role id params
func (o *GetAdminUsersByRoleIDParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get admin users by role id params
func (o *GetAdminUsersByRoleIDParams) WithContext(ctx context.Context) *GetAdminUsersByRoleIDParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get admin users by role id params
func (o *GetAdminUsersByRoleIDParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get admin users by role id params
func (o *GetAdminUsersByRoleIDParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get admin users by role id params
func (o *GetAdminUsersByRoleIDParams) WithHTTPClient(client *http.Client) *GetAdminUsersByRoleIDParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get admin users by role id params
func (o *GetAdminUsersByRoleIDParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get admin users by role id params
func (o *GetAdminUsersByRoleIDParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetAdminUsersByRoleIDParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get admin users by role id params
func (o *GetAdminUsersByRoleIDParams) WithNamespace(namespace string) *GetAdminUsersByRoleIDParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get admin users by role id params
func (o *GetAdminUsersByRoleIDParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithAfter adds the after to the get admin users by role id params
func (o *GetAdminUsersByRoleIDParams) WithAfter(after *int64) *GetAdminUsersByRoleIDParams {
	o.SetAfter(after)
	return o
}

// SetAfter adds the after to the get admin users by role id params
func (o *GetAdminUsersByRoleIDParams) SetAfter(after *int64) {
	o.After = after
}

// WithBefore adds the before to the get admin users by role id params
func (o *GetAdminUsersByRoleIDParams) WithBefore(before *int64) *GetAdminUsersByRoleIDParams {
	o.SetBefore(before)
	return o
}

// SetBefore adds the before to the get admin users by role id params
func (o *GetAdminUsersByRoleIDParams) SetBefore(before *int64) {
	o.Before = before
}

// WithLimit adds the limit to the get admin users by role id params
func (o *GetAdminUsersByRoleIDParams) WithLimit(limit *int64) *GetAdminUsersByRoleIDParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get admin users by role id params
func (o *GetAdminUsersByRoleIDParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithRoleID adds the roleID to the get admin users by role id params
func (o *GetAdminUsersByRoleIDParams) WithRoleID(roleID *string) *GetAdminUsersByRoleIDParams {
	o.SetRoleID(roleID)
	return o
}

// SetRoleID adds the roleId to the get admin users by role id params
func (o *GetAdminUsersByRoleIDParams) SetRoleID(roleID *string) {
	o.RoleID = roleID
}

// WriteToRequest writes these params to a swagger request
func (o *GetAdminUsersByRoleIDParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.After != nil {

		// query param after
		var qrAfter int64
		if o.After != nil {
			qrAfter = *o.After
		}
		qAfter := swag.FormatInt64(qrAfter)
		if qAfter != "" {
			if err := r.SetQueryParam("after", qAfter); err != nil {
				return err
			}
		}

	}

	if o.Before != nil {

		// query param before
		var qrBefore int64
		if o.Before != nil {
			qrBefore = *o.Before
		}
		qBefore := swag.FormatInt64(qrBefore)
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

	if o.RoleID != nil {

		// query param roleId
		var qrRoleID string
		if o.RoleID != nil {
			qrRoleID = *o.RoleID
		}
		qRoleID := qrRoleID
		if qRoleID != "" {
			if err := r.SetQueryParam("roleId", qRoleID); err != nil {
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
