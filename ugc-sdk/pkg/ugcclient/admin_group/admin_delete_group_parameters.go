// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_group

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// NewAdminDeleteGroupParams creates a new AdminDeleteGroupParams object
// with the default values initialized.
func NewAdminDeleteGroupParams() *AdminDeleteGroupParams {
	var ()
	return &AdminDeleteGroupParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminDeleteGroupParamsWithTimeout creates a new AdminDeleteGroupParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminDeleteGroupParamsWithTimeout(timeout time.Duration) *AdminDeleteGroupParams {
	var ()
	return &AdminDeleteGroupParams{

		timeout: timeout,
	}
}

// NewAdminDeleteGroupParamsWithContext creates a new AdminDeleteGroupParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminDeleteGroupParamsWithContext(ctx context.Context) *AdminDeleteGroupParams {
	var ()
	return &AdminDeleteGroupParams{

		Context: ctx,
	}
}

// NewAdminDeleteGroupParamsWithHTTPClient creates a new AdminDeleteGroupParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminDeleteGroupParamsWithHTTPClient(client *http.Client) *AdminDeleteGroupParams {
	var ()
	return &AdminDeleteGroupParams{
		HTTPClient: client,
	}
}

/*AdminDeleteGroupParams contains all the parameters to send to the API endpoint
for the admin delete group operation typically these are written to a http.Request
*/
type AdminDeleteGroupParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*GroupID
	  group ID

	*/
	GroupID string
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*UserID
	  user ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin delete group params
func (o *AdminDeleteGroupParams) WithTimeout(timeout time.Duration) *AdminDeleteGroupParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin delete group params
func (o *AdminDeleteGroupParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin delete group params
func (o *AdminDeleteGroupParams) WithContext(ctx context.Context) *AdminDeleteGroupParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin delete group params
func (o *AdminDeleteGroupParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin delete group params
func (o *AdminDeleteGroupParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin delete group params
func (o *AdminDeleteGroupParams) WithHTTPClient(client *http.Client) *AdminDeleteGroupParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin delete group params
func (o *AdminDeleteGroupParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin delete group params
func (o *AdminDeleteGroupParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminDeleteGroupParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithGroupID adds the groupID to the admin delete group params
func (o *AdminDeleteGroupParams) WithGroupID(groupID string) *AdminDeleteGroupParams {
	o.SetGroupID(groupID)
	return o
}

// SetGroupID adds the groupId to the admin delete group params
func (o *AdminDeleteGroupParams) SetGroupID(groupID string) {
	o.GroupID = groupID
}

// WithNamespace adds the namespace to the admin delete group params
func (o *AdminDeleteGroupParams) WithNamespace(namespace string) *AdminDeleteGroupParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin delete group params
func (o *AdminDeleteGroupParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin delete group params
func (o *AdminDeleteGroupParams) WithUserID(userID string) *AdminDeleteGroupParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin delete group params
func (o *AdminDeleteGroupParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminDeleteGroupParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param groupId
	if err := r.SetPathParam("groupId", o.GroupID); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
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
