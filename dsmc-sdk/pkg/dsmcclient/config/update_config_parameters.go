// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package config

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclientmodels"
)

// NewUpdateConfigParams creates a new UpdateConfigParams object
// with the default values initialized.
func NewUpdateConfigParams() *UpdateConfigParams {
	var ()
	return &UpdateConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateConfigParamsWithTimeout creates a new UpdateConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateConfigParamsWithTimeout(timeout time.Duration) *UpdateConfigParams {
	var ()
	return &UpdateConfigParams{

		timeout: timeout,
	}
}

// NewUpdateConfigParamsWithContext creates a new UpdateConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateConfigParamsWithContext(ctx context.Context) *UpdateConfigParams {
	var ()
	return &UpdateConfigParams{

		Context: ctx,
	}
}

// NewUpdateConfigParamsWithHTTPClient creates a new UpdateConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateConfigParamsWithHTTPClient(client *http.Client) *UpdateConfigParams {
	var ()
	return &UpdateConfigParams{
		HTTPClient: client,
	}
}

/*UpdateConfigParams contains all the parameters to send to the API endpoint
for the update config operation typically these are written to a http.Request
*/
type UpdateConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *dsmcclientmodels.ModelsUpdateDSMConfigRequest
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

// WithTimeout adds the timeout to the update config params
func (o *UpdateConfigParams) WithTimeout(timeout time.Duration) *UpdateConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update config params
func (o *UpdateConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update config params
func (o *UpdateConfigParams) WithContext(ctx context.Context) *UpdateConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update config params
func (o *UpdateConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update config params
func (o *UpdateConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update config params
func (o *UpdateConfigParams) WithHTTPClient(client *http.Client) *UpdateConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update config params
func (o *UpdateConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update config params
func (o *UpdateConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update config params
func (o *UpdateConfigParams) WithBody(body *dsmcclientmodels.ModelsUpdateDSMConfigRequest) *UpdateConfigParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update config params
func (o *UpdateConfigParams) SetBody(body *dsmcclientmodels.ModelsUpdateDSMConfigRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the update config params
func (o *UpdateConfigParams) WithNamespace(namespace string) *UpdateConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update config params
func (o *UpdateConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
