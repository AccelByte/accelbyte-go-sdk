// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package clients

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// NewUpdateClientSecretParams creates a new UpdateClientSecretParams object
// with the default values initialized.
func NewUpdateClientSecretParams() *UpdateClientSecretParams {
	var ()
	return &UpdateClientSecretParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateClientSecretParamsWithTimeout creates a new UpdateClientSecretParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateClientSecretParamsWithTimeout(timeout time.Duration) *UpdateClientSecretParams {
	var ()
	return &UpdateClientSecretParams{

		timeout: timeout,
	}
}

// NewUpdateClientSecretParamsWithContext creates a new UpdateClientSecretParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateClientSecretParamsWithContext(ctx context.Context) *UpdateClientSecretParams {
	var ()
	return &UpdateClientSecretParams{

		Context: ctx,
	}
}

// NewUpdateClientSecretParamsWithHTTPClient creates a new UpdateClientSecretParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateClientSecretParamsWithHTTPClient(client *http.Client) *UpdateClientSecretParams {
	var ()
	return &UpdateClientSecretParams{
		HTTPClient: client,
	}
}

/*UpdateClientSecretParams contains all the parameters to send to the API endpoint
for the update client secret operation typically these are written to a http.Request
*/
type UpdateClientSecretParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ClientmodelClientUpdateSecretRequest
	/*ClientID
	  Client ID

	*/
	ClientID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update client secret params
func (o *UpdateClientSecretParams) WithTimeout(timeout time.Duration) *UpdateClientSecretParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update client secret params
func (o *UpdateClientSecretParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update client secret params
func (o *UpdateClientSecretParams) WithContext(ctx context.Context) *UpdateClientSecretParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update client secret params
func (o *UpdateClientSecretParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update client secret params
func (o *UpdateClientSecretParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update client secret params
func (o *UpdateClientSecretParams) WithHTTPClient(client *http.Client) *UpdateClientSecretParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update client secret params
func (o *UpdateClientSecretParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update client secret params
func (o *UpdateClientSecretParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateClientSecretParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update client secret params
func (o *UpdateClientSecretParams) WithBody(body *iamclientmodels.ClientmodelClientUpdateSecretRequest) *UpdateClientSecretParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update client secret params
func (o *UpdateClientSecretParams) SetBody(body *iamclientmodels.ClientmodelClientUpdateSecretRequest) {
	o.Body = body
}

// WithClientID adds the clientID to the update client secret params
func (o *UpdateClientSecretParams) WithClientID(clientID string) *UpdateClientSecretParams {
	o.SetClientID(clientID)
	return o
}

// SetClientID adds the clientId to the update client secret params
func (o *UpdateClientSecretParams) SetClientID(clientID string) {
	o.ClientID = clientID
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateClientSecretParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param clientId
	if err := r.SetPathParam("clientId", o.ClientID); err != nil {
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
