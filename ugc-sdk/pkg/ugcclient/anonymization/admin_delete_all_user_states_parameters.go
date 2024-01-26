// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package anonymization

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

// NewAdminDeleteAllUserStatesParams creates a new AdminDeleteAllUserStatesParams object
// with the default values initialized.
func NewAdminDeleteAllUserStatesParams() *AdminDeleteAllUserStatesParams {
	var ()
	return &AdminDeleteAllUserStatesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminDeleteAllUserStatesParamsWithTimeout creates a new AdminDeleteAllUserStatesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminDeleteAllUserStatesParamsWithTimeout(timeout time.Duration) *AdminDeleteAllUserStatesParams {
	var ()
	return &AdminDeleteAllUserStatesParams{

		timeout: timeout,
	}
}

// NewAdminDeleteAllUserStatesParamsWithContext creates a new AdminDeleteAllUserStatesParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminDeleteAllUserStatesParamsWithContext(ctx context.Context) *AdminDeleteAllUserStatesParams {
	var ()
	return &AdminDeleteAllUserStatesParams{

		Context: ctx,
	}
}

// NewAdminDeleteAllUserStatesParamsWithHTTPClient creates a new AdminDeleteAllUserStatesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminDeleteAllUserStatesParamsWithHTTPClient(client *http.Client) *AdminDeleteAllUserStatesParams {
	var ()
	return &AdminDeleteAllUserStatesParams{
		HTTPClient: client,
	}
}

/*AdminDeleteAllUserStatesParams contains all the parameters to send to the API endpoint
for the admin delete all user states operation typically these are written to a http.Request
*/
type AdminDeleteAllUserStatesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
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

// WithTimeout adds the timeout to the admin delete all user states params
func (o *AdminDeleteAllUserStatesParams) WithTimeout(timeout time.Duration) *AdminDeleteAllUserStatesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin delete all user states params
func (o *AdminDeleteAllUserStatesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin delete all user states params
func (o *AdminDeleteAllUserStatesParams) WithContext(ctx context.Context) *AdminDeleteAllUserStatesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin delete all user states params
func (o *AdminDeleteAllUserStatesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin delete all user states params
func (o *AdminDeleteAllUserStatesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin delete all user states params
func (o *AdminDeleteAllUserStatesParams) WithHTTPClient(client *http.Client) *AdminDeleteAllUserStatesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin delete all user states params
func (o *AdminDeleteAllUserStatesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin delete all user states params
func (o *AdminDeleteAllUserStatesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminDeleteAllUserStatesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin delete all user states params
func (o *AdminDeleteAllUserStatesParams) WithNamespace(namespace string) *AdminDeleteAllUserStatesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin delete all user states params
func (o *AdminDeleteAllUserStatesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin delete all user states params
func (o *AdminDeleteAllUserStatesParams) WithUserID(userID string) *AdminDeleteAllUserStatesParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin delete all user states params
func (o *AdminDeleteAllUserStatesParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminDeleteAllUserStatesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
