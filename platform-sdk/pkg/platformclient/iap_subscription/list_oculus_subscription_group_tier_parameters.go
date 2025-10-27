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

// NewListOculusSubscriptionGroupTierParams creates a new ListOculusSubscriptionGroupTierParams object
// with the default values initialized.
func NewListOculusSubscriptionGroupTierParams() *ListOculusSubscriptionGroupTierParams {
	var ()
	return &ListOculusSubscriptionGroupTierParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewListOculusSubscriptionGroupTierParamsWithTimeout creates a new ListOculusSubscriptionGroupTierParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewListOculusSubscriptionGroupTierParamsWithTimeout(timeout time.Duration) *ListOculusSubscriptionGroupTierParams {
	var ()
	return &ListOculusSubscriptionGroupTierParams{

		timeout: timeout,
	}
}

// NewListOculusSubscriptionGroupTierParamsWithContext creates a new ListOculusSubscriptionGroupTierParams object
// with the default values initialized, and the ability to set a context for a request
func NewListOculusSubscriptionGroupTierParamsWithContext(ctx context.Context) *ListOculusSubscriptionGroupTierParams {
	var ()
	return &ListOculusSubscriptionGroupTierParams{

		Context: ctx,
	}
}

// NewListOculusSubscriptionGroupTierParamsWithHTTPClient creates a new ListOculusSubscriptionGroupTierParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewListOculusSubscriptionGroupTierParamsWithHTTPClient(client *http.Client) *ListOculusSubscriptionGroupTierParams {
	var ()
	return &ListOculusSubscriptionGroupTierParams{
		HTTPClient: client,
	}
}

/*ListOculusSubscriptionGroupTierParams contains all the parameters to send to the API endpoint
for the list oculus subscription group tier operation typically these are written to a http.Request
*/
type ListOculusSubscriptionGroupTierParams struct {

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

// WithTimeout adds the timeout to the list oculus subscription group tier params
func (o *ListOculusSubscriptionGroupTierParams) WithTimeout(timeout time.Duration) *ListOculusSubscriptionGroupTierParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the list oculus subscription group tier params
func (o *ListOculusSubscriptionGroupTierParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the list oculus subscription group tier params
func (o *ListOculusSubscriptionGroupTierParams) WithContext(ctx context.Context) *ListOculusSubscriptionGroupTierParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the list oculus subscription group tier params
func (o *ListOculusSubscriptionGroupTierParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the list oculus subscription group tier params
func (o *ListOculusSubscriptionGroupTierParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the list oculus subscription group tier params
func (o *ListOculusSubscriptionGroupTierParams) WithHTTPClient(client *http.Client) *ListOculusSubscriptionGroupTierParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the list oculus subscription group tier params
func (o *ListOculusSubscriptionGroupTierParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the list oculus subscription group tier params
func (o *ListOculusSubscriptionGroupTierParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ListOculusSubscriptionGroupTierParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the list oculus subscription group tier params
func (o *ListOculusSubscriptionGroupTierParams) WithNamespace(namespace string) *ListOculusSubscriptionGroupTierParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the list oculus subscription group tier params
func (o *ListOculusSubscriptionGroupTierParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSku adds the sku to the list oculus subscription group tier params
func (o *ListOculusSubscriptionGroupTierParams) WithSku(sku string) *ListOculusSubscriptionGroupTierParams {
	o.SetSku(sku)
	return o
}

// SetSku adds the sku to the list oculus subscription group tier params
func (o *ListOculusSubscriptionGroupTierParams) SetSku(sku string) {
	o.Sku = sku
}

// WriteToRequest writes these params to a swagger request
func (o *ListOculusSubscriptionGroupTierParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
