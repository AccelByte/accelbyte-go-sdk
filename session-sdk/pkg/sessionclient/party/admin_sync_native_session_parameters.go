// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package party

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

// NewAdminSyncNativeSessionParams creates a new AdminSyncNativeSessionParams object
// with the default values initialized.
func NewAdminSyncNativeSessionParams() *AdminSyncNativeSessionParams {
	var ()
	return &AdminSyncNativeSessionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminSyncNativeSessionParamsWithTimeout creates a new AdminSyncNativeSessionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminSyncNativeSessionParamsWithTimeout(timeout time.Duration) *AdminSyncNativeSessionParams {
	var ()
	return &AdminSyncNativeSessionParams{

		timeout: timeout,
	}
}

// NewAdminSyncNativeSessionParamsWithContext creates a new AdminSyncNativeSessionParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminSyncNativeSessionParamsWithContext(ctx context.Context) *AdminSyncNativeSessionParams {
	var ()
	return &AdminSyncNativeSessionParams{

		Context: ctx,
	}
}

// NewAdminSyncNativeSessionParamsWithHTTPClient creates a new AdminSyncNativeSessionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminSyncNativeSessionParamsWithHTTPClient(client *http.Client) *AdminSyncNativeSessionParams {
	var ()
	return &AdminSyncNativeSessionParams{
		HTTPClient: client,
	}
}

/*AdminSyncNativeSessionParams contains all the parameters to send to the API endpoint
for the admin sync native session operation typically these are written to a http.Request
*/
type AdminSyncNativeSessionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*UserID
	  User ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin sync native session params
func (o *AdminSyncNativeSessionParams) WithTimeout(timeout time.Duration) *AdminSyncNativeSessionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin sync native session params
func (o *AdminSyncNativeSessionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin sync native session params
func (o *AdminSyncNativeSessionParams) WithContext(ctx context.Context) *AdminSyncNativeSessionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin sync native session params
func (o *AdminSyncNativeSessionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin sync native session params
func (o *AdminSyncNativeSessionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin sync native session params
func (o *AdminSyncNativeSessionParams) WithHTTPClient(client *http.Client) *AdminSyncNativeSessionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin sync native session params
func (o *AdminSyncNativeSessionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin sync native session params
func (o *AdminSyncNativeSessionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminSyncNativeSessionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin sync native session params
func (o *AdminSyncNativeSessionParams) WithNamespace(namespace string) *AdminSyncNativeSessionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin sync native session params
func (o *AdminSyncNativeSessionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin sync native session params
func (o *AdminSyncNativeSessionParams) WithUserID(userID string) *AdminSyncNativeSessionParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin sync native session params
func (o *AdminSyncNativeSessionParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminSyncNativeSessionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
