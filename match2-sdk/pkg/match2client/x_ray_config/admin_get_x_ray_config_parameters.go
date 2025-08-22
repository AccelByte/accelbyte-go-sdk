// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package x_ray_config

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

// NewAdminGetXRayConfigParams creates a new AdminGetXRayConfigParams object
// with the default values initialized.
func NewAdminGetXRayConfigParams() *AdminGetXRayConfigParams {
	var ()
	return &AdminGetXRayConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetXRayConfigParamsWithTimeout creates a new AdminGetXRayConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetXRayConfigParamsWithTimeout(timeout time.Duration) *AdminGetXRayConfigParams {
	var ()
	return &AdminGetXRayConfigParams{

		timeout: timeout,
	}
}

// NewAdminGetXRayConfigParamsWithContext creates a new AdminGetXRayConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetXRayConfigParamsWithContext(ctx context.Context) *AdminGetXRayConfigParams {
	var ()
	return &AdminGetXRayConfigParams{

		Context: ctx,
	}
}

// NewAdminGetXRayConfigParamsWithHTTPClient creates a new AdminGetXRayConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetXRayConfigParamsWithHTTPClient(client *http.Client) *AdminGetXRayConfigParams {
	var ()
	return &AdminGetXRayConfigParams{
		HTTPClient: client,
	}
}

/*AdminGetXRayConfigParams contains all the parameters to send to the API endpoint
for the admin get x ray config operation typically these are written to a http.Request
*/
type AdminGetXRayConfigParams struct {

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

// WithTimeout adds the timeout to the admin get x ray config params
func (o *AdminGetXRayConfigParams) WithTimeout(timeout time.Duration) *AdminGetXRayConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get x ray config params
func (o *AdminGetXRayConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get x ray config params
func (o *AdminGetXRayConfigParams) WithContext(ctx context.Context) *AdminGetXRayConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get x ray config params
func (o *AdminGetXRayConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get x ray config params
func (o *AdminGetXRayConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get x ray config params
func (o *AdminGetXRayConfigParams) WithHTTPClient(client *http.Client) *AdminGetXRayConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get x ray config params
func (o *AdminGetXRayConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get x ray config params
func (o *AdminGetXRayConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetXRayConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin get x ray config params
func (o *AdminGetXRayConfigParams) WithNamespace(namespace string) *AdminGetXRayConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get x ray config params
func (o *AdminGetXRayConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetXRayConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
