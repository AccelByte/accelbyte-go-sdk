// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iap_subscription

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

// NewDeleteOculusSubscriptionGroupParams creates a new DeleteOculusSubscriptionGroupParams object
// with the default values initialized.
func NewDeleteOculusSubscriptionGroupParams() *DeleteOculusSubscriptionGroupParams {
	var ()
	return &DeleteOculusSubscriptionGroupParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteOculusSubscriptionGroupParamsWithTimeout creates a new DeleteOculusSubscriptionGroupParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteOculusSubscriptionGroupParamsWithTimeout(timeout time.Duration) *DeleteOculusSubscriptionGroupParams {
	var ()
	return &DeleteOculusSubscriptionGroupParams{

		timeout: timeout,
	}
}

// NewDeleteOculusSubscriptionGroupParamsWithContext creates a new DeleteOculusSubscriptionGroupParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteOculusSubscriptionGroupParamsWithContext(ctx context.Context) *DeleteOculusSubscriptionGroupParams {
	var ()
	return &DeleteOculusSubscriptionGroupParams{

		Context: ctx,
	}
}

// NewDeleteOculusSubscriptionGroupParamsWithHTTPClient creates a new DeleteOculusSubscriptionGroupParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteOculusSubscriptionGroupParamsWithHTTPClient(client *http.Client) *DeleteOculusSubscriptionGroupParams {
	var ()
	return &DeleteOculusSubscriptionGroupParams{
		HTTPClient: client,
	}
}

/*DeleteOculusSubscriptionGroupParams contains all the parameters to send to the API endpoint
for the delete oculus subscription group operation typically these are written to a http.Request
*/
type DeleteOculusSubscriptionGroupParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*Sku*/
	Sku string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the delete oculus subscription group params
func (o *DeleteOculusSubscriptionGroupParams) WithTimeout(timeout time.Duration) *DeleteOculusSubscriptionGroupParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete oculus subscription group params
func (o *DeleteOculusSubscriptionGroupParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete oculus subscription group params
func (o *DeleteOculusSubscriptionGroupParams) WithContext(ctx context.Context) *DeleteOculusSubscriptionGroupParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete oculus subscription group params
func (o *DeleteOculusSubscriptionGroupParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete oculus subscription group params
func (o *DeleteOculusSubscriptionGroupParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete oculus subscription group params
func (o *DeleteOculusSubscriptionGroupParams) WithHTTPClient(client *http.Client) *DeleteOculusSubscriptionGroupParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete oculus subscription group params
func (o *DeleteOculusSubscriptionGroupParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete oculus subscription group params
func (o *DeleteOculusSubscriptionGroupParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteOculusSubscriptionGroupParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the delete oculus subscription group params
func (o *DeleteOculusSubscriptionGroupParams) WithNamespace(namespace string) *DeleteOculusSubscriptionGroupParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete oculus subscription group params
func (o *DeleteOculusSubscriptionGroupParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSku adds the sku to the delete oculus subscription group params
func (o *DeleteOculusSubscriptionGroupParams) WithSku(sku string) *DeleteOculusSubscriptionGroupParams {
	o.SetSku(sku)
	return o
}

// SetSku adds the sku to the delete oculus subscription group params
func (o *DeleteOculusSubscriptionGroupParams) SetSku(sku string) {
	o.Sku = sku
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteOculusSubscriptionGroupParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param sku
	if err := r.SetPathParam("sku", o.Sku); err != nil {
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
