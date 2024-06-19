// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package payment_config

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

// NewUpdatePaymentDomainWhitelistConfigParams creates a new UpdatePaymentDomainWhitelistConfigParams object
// with the default values initialized.
func NewUpdatePaymentDomainWhitelistConfigParams() *UpdatePaymentDomainWhitelistConfigParams {
	var ()
	return &UpdatePaymentDomainWhitelistConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdatePaymentDomainWhitelistConfigParamsWithTimeout creates a new UpdatePaymentDomainWhitelistConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdatePaymentDomainWhitelistConfigParamsWithTimeout(timeout time.Duration) *UpdatePaymentDomainWhitelistConfigParams {
	var ()
	return &UpdatePaymentDomainWhitelistConfigParams{

		timeout: timeout,
	}
}

// NewUpdatePaymentDomainWhitelistConfigParamsWithContext creates a new UpdatePaymentDomainWhitelistConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdatePaymentDomainWhitelistConfigParamsWithContext(ctx context.Context) *UpdatePaymentDomainWhitelistConfigParams {
	var ()
	return &UpdatePaymentDomainWhitelistConfigParams{

		Context: ctx,
	}
}

// NewUpdatePaymentDomainWhitelistConfigParamsWithHTTPClient creates a new UpdatePaymentDomainWhitelistConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdatePaymentDomainWhitelistConfigParamsWithHTTPClient(client *http.Client) *UpdatePaymentDomainWhitelistConfigParams {
	var ()
	return &UpdatePaymentDomainWhitelistConfigParams{
		HTTPClient: client,
	}
}

/*UpdatePaymentDomainWhitelistConfigParams contains all the parameters to send to the API endpoint
for the update payment domain whitelist config operation typically these are written to a http.Request
*/
type UpdatePaymentDomainWhitelistConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.PaymentDomainWhitelistConfigEdit
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update payment domain whitelist config params
func (o *UpdatePaymentDomainWhitelistConfigParams) WithTimeout(timeout time.Duration) *UpdatePaymentDomainWhitelistConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update payment domain whitelist config params
func (o *UpdatePaymentDomainWhitelistConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update payment domain whitelist config params
func (o *UpdatePaymentDomainWhitelistConfigParams) WithContext(ctx context.Context) *UpdatePaymentDomainWhitelistConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update payment domain whitelist config params
func (o *UpdatePaymentDomainWhitelistConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update payment domain whitelist config params
func (o *UpdatePaymentDomainWhitelistConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update payment domain whitelist config params
func (o *UpdatePaymentDomainWhitelistConfigParams) WithHTTPClient(client *http.Client) *UpdatePaymentDomainWhitelistConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update payment domain whitelist config params
func (o *UpdatePaymentDomainWhitelistConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update payment domain whitelist config params
func (o *UpdatePaymentDomainWhitelistConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdatePaymentDomainWhitelistConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update payment domain whitelist config params
func (o *UpdatePaymentDomainWhitelistConfigParams) WithBody(body *platformclientmodels.PaymentDomainWhitelistConfigEdit) *UpdatePaymentDomainWhitelistConfigParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update payment domain whitelist config params
func (o *UpdatePaymentDomainWhitelistConfigParams) SetBody(body *platformclientmodels.PaymentDomainWhitelistConfigEdit) {
	o.Body = body
}

// WithNamespace adds the namespace to the update payment domain whitelist config params
func (o *UpdatePaymentDomainWhitelistConfigParams) WithNamespace(namespace string) *UpdatePaymentDomainWhitelistConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update payment domain whitelist config params
func (o *UpdatePaymentDomainWhitelistConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdatePaymentDomainWhitelistConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
