// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package plugin_config

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
)

// NewUpdatePluginConfigParams creates a new UpdatePluginConfigParams object
// with the default values initialized.
func NewUpdatePluginConfigParams() *UpdatePluginConfigParams {
	var ()
	return &UpdatePluginConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdatePluginConfigParamsWithTimeout creates a new UpdatePluginConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdatePluginConfigParamsWithTimeout(timeout time.Duration) *UpdatePluginConfigParams {
	var ()
	return &UpdatePluginConfigParams{

		timeout: timeout,
	}
}

// NewUpdatePluginConfigParamsWithContext creates a new UpdatePluginConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdatePluginConfigParamsWithContext(ctx context.Context) *UpdatePluginConfigParams {
	var ()
	return &UpdatePluginConfigParams{

		Context: ctx,
	}
}

// NewUpdatePluginConfigParamsWithHTTPClient creates a new UpdatePluginConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdatePluginConfigParamsWithHTTPClient(client *http.Client) *UpdatePluginConfigParams {
	var ()
	return &UpdatePluginConfigParams{
		HTTPClient: client,
	}
}

/*UpdatePluginConfigParams contains all the parameters to send to the API endpoint
for the update plugin config operation typically these are written to a http.Request
*/
type UpdatePluginConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *cloudsaveclientmodels.ModelsPluginRequest
	/*Namespace
	  namespace of the game, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update plugin config params
func (o *UpdatePluginConfigParams) WithTimeout(timeout time.Duration) *UpdatePluginConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update plugin config params
func (o *UpdatePluginConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update plugin config params
func (o *UpdatePluginConfigParams) WithContext(ctx context.Context) *UpdatePluginConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update plugin config params
func (o *UpdatePluginConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update plugin config params
func (o *UpdatePluginConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update plugin config params
func (o *UpdatePluginConfigParams) WithHTTPClient(client *http.Client) *UpdatePluginConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update plugin config params
func (o *UpdatePluginConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update plugin config params
func (o *UpdatePluginConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdatePluginConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update plugin config params
func (o *UpdatePluginConfigParams) WithBody(body *cloudsaveclientmodels.ModelsPluginRequest) *UpdatePluginConfigParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update plugin config params
func (o *UpdatePluginConfigParams) SetBody(body *cloudsaveclientmodels.ModelsPluginRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the update plugin config params
func (o *UpdatePluginConfigParams) WithNamespace(namespace string) *UpdatePluginConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update plugin config params
func (o *UpdatePluginConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdatePluginConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
