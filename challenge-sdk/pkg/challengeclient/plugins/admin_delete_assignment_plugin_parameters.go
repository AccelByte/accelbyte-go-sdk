// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package plugins

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

// NewAdminDeleteAssignmentPluginParams creates a new AdminDeleteAssignmentPluginParams object
// with the default values initialized.
func NewAdminDeleteAssignmentPluginParams() *AdminDeleteAssignmentPluginParams {
	var ()
	return &AdminDeleteAssignmentPluginParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminDeleteAssignmentPluginParamsWithTimeout creates a new AdminDeleteAssignmentPluginParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminDeleteAssignmentPluginParamsWithTimeout(timeout time.Duration) *AdminDeleteAssignmentPluginParams {
	var ()
	return &AdminDeleteAssignmentPluginParams{

		timeout: timeout,
	}
}

// NewAdminDeleteAssignmentPluginParamsWithContext creates a new AdminDeleteAssignmentPluginParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminDeleteAssignmentPluginParamsWithContext(ctx context.Context) *AdminDeleteAssignmentPluginParams {
	var ()
	return &AdminDeleteAssignmentPluginParams{

		Context: ctx,
	}
}

// NewAdminDeleteAssignmentPluginParamsWithHTTPClient creates a new AdminDeleteAssignmentPluginParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminDeleteAssignmentPluginParamsWithHTTPClient(client *http.Client) *AdminDeleteAssignmentPluginParams {
	var ()
	return &AdminDeleteAssignmentPluginParams{
		HTTPClient: client,
	}
}

/*AdminDeleteAssignmentPluginParams contains all the parameters to send to the API endpoint
for the admin delete assignment plugin operation typically these are written to a http.Request
*/
type AdminDeleteAssignmentPluginParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin delete assignment plugin params
func (o *AdminDeleteAssignmentPluginParams) WithTimeout(timeout time.Duration) *AdminDeleteAssignmentPluginParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin delete assignment plugin params
func (o *AdminDeleteAssignmentPluginParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin delete assignment plugin params
func (o *AdminDeleteAssignmentPluginParams) WithContext(ctx context.Context) *AdminDeleteAssignmentPluginParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin delete assignment plugin params
func (o *AdminDeleteAssignmentPluginParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin delete assignment plugin params
func (o *AdminDeleteAssignmentPluginParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin delete assignment plugin params
func (o *AdminDeleteAssignmentPluginParams) WithHTTPClient(client *http.Client) *AdminDeleteAssignmentPluginParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin delete assignment plugin params
func (o *AdminDeleteAssignmentPluginParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin delete assignment plugin params
func (o *AdminDeleteAssignmentPluginParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminDeleteAssignmentPluginParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin delete assignment plugin params
func (o *AdminDeleteAssignmentPluginParams) WithNamespace(namespace string) *AdminDeleteAssignmentPluginParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin delete assignment plugin params
func (o *AdminDeleteAssignmentPluginParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminDeleteAssignmentPluginParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
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
