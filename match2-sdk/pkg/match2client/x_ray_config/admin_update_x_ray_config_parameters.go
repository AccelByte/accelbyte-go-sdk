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

	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2clientmodels"
)

// NewAdminUpdateXRayConfigParams creates a new AdminUpdateXRayConfigParams object
// with the default values initialized.
func NewAdminUpdateXRayConfigParams() *AdminUpdateXRayConfigParams {
	var ()
	return &AdminUpdateXRayConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdateXRayConfigParamsWithTimeout creates a new AdminUpdateXRayConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdateXRayConfigParamsWithTimeout(timeout time.Duration) *AdminUpdateXRayConfigParams {
	var ()
	return &AdminUpdateXRayConfigParams{

		timeout: timeout,
	}
}

// NewAdminUpdateXRayConfigParamsWithContext creates a new AdminUpdateXRayConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdateXRayConfigParamsWithContext(ctx context.Context) *AdminUpdateXRayConfigParams {
	var ()
	return &AdminUpdateXRayConfigParams{

		Context: ctx,
	}
}

// NewAdminUpdateXRayConfigParamsWithHTTPClient creates a new AdminUpdateXRayConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdateXRayConfigParamsWithHTTPClient(client *http.Client) *AdminUpdateXRayConfigParams {
	var ()
	return &AdminUpdateXRayConfigParams{
		HTTPClient: client,
	}
}

/*AdminUpdateXRayConfigParams contains all the parameters to send to the API endpoint
for the admin update x ray config operation typically these are written to a http.Request
*/
type AdminUpdateXRayConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *match2clientmodels.ModelsXRayConfigHTTPUpdateRequest
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

// WithTimeout adds the timeout to the admin update x ray config params
func (o *AdminUpdateXRayConfigParams) WithTimeout(timeout time.Duration) *AdminUpdateXRayConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update x ray config params
func (o *AdminUpdateXRayConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update x ray config params
func (o *AdminUpdateXRayConfigParams) WithContext(ctx context.Context) *AdminUpdateXRayConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update x ray config params
func (o *AdminUpdateXRayConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin update x ray config params
func (o *AdminUpdateXRayConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin update x ray config params
func (o *AdminUpdateXRayConfigParams) WithHTTPClient(client *http.Client) *AdminUpdateXRayConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update x ray config params
func (o *AdminUpdateXRayConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin update x ray config params
func (o *AdminUpdateXRayConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminUpdateXRayConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin update x ray config params
func (o *AdminUpdateXRayConfigParams) WithBody(body *match2clientmodels.ModelsXRayConfigHTTPUpdateRequest) *AdminUpdateXRayConfigParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin update x ray config params
func (o *AdminUpdateXRayConfigParams) SetBody(body *match2clientmodels.ModelsXRayConfigHTTPUpdateRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin update x ray config params
func (o *AdminUpdateXRayConfigParams) WithNamespace(namespace string) *AdminUpdateXRayConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin update x ray config params
func (o *AdminUpdateXRayConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdateXRayConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

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
