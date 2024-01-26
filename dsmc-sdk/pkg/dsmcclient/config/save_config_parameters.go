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

// NewSaveConfigParams creates a new SaveConfigParams object
// with the default values initialized.
func NewSaveConfigParams() *SaveConfigParams {
	var ()
	return &SaveConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewSaveConfigParamsWithTimeout creates a new SaveConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewSaveConfigParamsWithTimeout(timeout time.Duration) *SaveConfigParams {
	var ()
	return &SaveConfigParams{

		timeout: timeout,
	}
}

// NewSaveConfigParamsWithContext creates a new SaveConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewSaveConfigParamsWithContext(ctx context.Context) *SaveConfigParams {
	var ()
	return &SaveConfigParams{

		Context: ctx,
	}
}

// NewSaveConfigParamsWithHTTPClient creates a new SaveConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSaveConfigParamsWithHTTPClient(client *http.Client) *SaveConfigParams {
	var ()
	return &SaveConfigParams{
		HTTPClient: client,
	}
}

/*SaveConfigParams contains all the parameters to send to the API endpoint
for the save config operation typically these are written to a http.Request
*/
type SaveConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *dsmcclientmodels.ModelsDSMConfigRecord

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the save config params
func (o *SaveConfigParams) WithTimeout(timeout time.Duration) *SaveConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the save config params
func (o *SaveConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the save config params
func (o *SaveConfigParams) WithContext(ctx context.Context) *SaveConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the save config params
func (o *SaveConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the save config params
func (o *SaveConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the save config params
func (o *SaveConfigParams) WithHTTPClient(client *http.Client) *SaveConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the save config params
func (o *SaveConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the save config params
func (o *SaveConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *SaveConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the save config params
func (o *SaveConfigParams) WithBody(body *dsmcclientmodels.ModelsDSMConfigRecord) *SaveConfigParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the save config params
func (o *SaveConfigParams) SetBody(body *dsmcclientmodels.ModelsDSMConfigRecord) {
	o.Body = body
}

// WriteToRequest writes these params to a swagger request
func (o *SaveConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
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
