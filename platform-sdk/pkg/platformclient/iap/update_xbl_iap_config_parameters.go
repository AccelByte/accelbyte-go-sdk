// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iap

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewUpdateXblIAPConfigParams creates a new UpdateXblIAPConfigParams object
// with the default values initialized.
func NewUpdateXblIAPConfigParams() *UpdateXblIAPConfigParams {
	var ()
	return &UpdateXblIAPConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateXblIAPConfigParamsWithTimeout creates a new UpdateXblIAPConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateXblIAPConfigParamsWithTimeout(timeout time.Duration) *UpdateXblIAPConfigParams {
	var ()
	return &UpdateXblIAPConfigParams{

		timeout: timeout,
	}
}

// NewUpdateXblIAPConfigParamsWithContext creates a new UpdateXblIAPConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateXblIAPConfigParamsWithContext(ctx context.Context) *UpdateXblIAPConfigParams {
	var ()
	return &UpdateXblIAPConfigParams{

		Context: ctx,
	}
}

// NewUpdateXblIAPConfigParamsWithHTTPClient creates a new UpdateXblIAPConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateXblIAPConfigParamsWithHTTPClient(client *http.Client) *UpdateXblIAPConfigParams {
	var ()
	return &UpdateXblIAPConfigParams{
		HTTPClient: client,
	}
}

/*UpdateXblIAPConfigParams contains all the parameters to send to the API endpoint
for the update xbl iap config operation typically these are written to a http.Request
*/
type UpdateXblIAPConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.XblIAPConfigRequest
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update xbl iap config params
func (o *UpdateXblIAPConfigParams) WithTimeout(timeout time.Duration) *UpdateXblIAPConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update xbl iap config params
func (o *UpdateXblIAPConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update xbl iap config params
func (o *UpdateXblIAPConfigParams) WithContext(ctx context.Context) *UpdateXblIAPConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update xbl iap config params
func (o *UpdateXblIAPConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update xbl iap config params
func (o *UpdateXblIAPConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update xbl iap config params
func (o *UpdateXblIAPConfigParams) WithHTTPClient(client *http.Client) *UpdateXblIAPConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update xbl iap config params
func (o *UpdateXblIAPConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update xbl iap config params
func (o *UpdateXblIAPConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateXblIAPConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update xbl iap config params
func (o *UpdateXblIAPConfigParams) WithBody(body *platformclientmodels.XblIAPConfigRequest) *UpdateXblIAPConfigParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update xbl iap config params
func (o *UpdateXblIAPConfigParams) SetBody(body *platformclientmodels.XblIAPConfigRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the update xbl iap config params
func (o *UpdateXblIAPConfigParams) WithNamespace(namespace string) *UpdateXblIAPConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update xbl iap config params
func (o *UpdateXblIAPConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateXblIAPConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
