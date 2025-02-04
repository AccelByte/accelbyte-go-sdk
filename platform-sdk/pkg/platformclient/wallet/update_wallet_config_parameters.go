// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package wallet

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

// NewUpdateWalletConfigParams creates a new UpdateWalletConfigParams object
// with the default values initialized.
func NewUpdateWalletConfigParams() *UpdateWalletConfigParams {
	var ()
	return &UpdateWalletConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateWalletConfigParamsWithTimeout creates a new UpdateWalletConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateWalletConfigParamsWithTimeout(timeout time.Duration) *UpdateWalletConfigParams {
	var ()
	return &UpdateWalletConfigParams{

		timeout: timeout,
	}
}

// NewUpdateWalletConfigParamsWithContext creates a new UpdateWalletConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateWalletConfigParamsWithContext(ctx context.Context) *UpdateWalletConfigParams {
	var ()
	return &UpdateWalletConfigParams{

		Context: ctx,
	}
}

// NewUpdateWalletConfigParamsWithHTTPClient creates a new UpdateWalletConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateWalletConfigParamsWithHTTPClient(client *http.Client) *UpdateWalletConfigParams {
	var ()
	return &UpdateWalletConfigParams{
		HTTPClient: client,
	}
}

/*UpdateWalletConfigParams contains all the parameters to send to the API endpoint
for the update wallet config operation typically these are written to a http.Request
*/
type UpdateWalletConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.WalletConfigUpdate
	/*Namespace
	  Namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update wallet config params
func (o *UpdateWalletConfigParams) WithTimeout(timeout time.Duration) *UpdateWalletConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update wallet config params
func (o *UpdateWalletConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update wallet config params
func (o *UpdateWalletConfigParams) WithContext(ctx context.Context) *UpdateWalletConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update wallet config params
func (o *UpdateWalletConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update wallet config params
func (o *UpdateWalletConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update wallet config params
func (o *UpdateWalletConfigParams) WithHTTPClient(client *http.Client) *UpdateWalletConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update wallet config params
func (o *UpdateWalletConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update wallet config params
func (o *UpdateWalletConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateWalletConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update wallet config params
func (o *UpdateWalletConfigParams) WithBody(body *platformclientmodels.WalletConfigUpdate) *UpdateWalletConfigParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update wallet config params
func (o *UpdateWalletConfigParams) SetBody(body *platformclientmodels.WalletConfigUpdate) {
	o.Body = body
}

// WithNamespace adds the namespace to the update wallet config params
func (o *UpdateWalletConfigParams) WithNamespace(namespace string) *UpdateWalletConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update wallet config params
func (o *UpdateWalletConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateWalletConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
