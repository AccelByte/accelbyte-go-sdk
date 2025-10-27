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

// NewListOculusSubscriptionGroupsParams creates a new ListOculusSubscriptionGroupsParams object
// with the default values initialized.
func NewListOculusSubscriptionGroupsParams() *ListOculusSubscriptionGroupsParams {
	var ()
	return &ListOculusSubscriptionGroupsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewListOculusSubscriptionGroupsParamsWithTimeout creates a new ListOculusSubscriptionGroupsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewListOculusSubscriptionGroupsParamsWithTimeout(timeout time.Duration) *ListOculusSubscriptionGroupsParams {
	var ()
	return &ListOculusSubscriptionGroupsParams{

		timeout: timeout,
	}
}

// NewListOculusSubscriptionGroupsParamsWithContext creates a new ListOculusSubscriptionGroupsParams object
// with the default values initialized, and the ability to set a context for a request
func NewListOculusSubscriptionGroupsParamsWithContext(ctx context.Context) *ListOculusSubscriptionGroupsParams {
	var ()
	return &ListOculusSubscriptionGroupsParams{

		Context: ctx,
	}
}

// NewListOculusSubscriptionGroupsParamsWithHTTPClient creates a new ListOculusSubscriptionGroupsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewListOculusSubscriptionGroupsParamsWithHTTPClient(client *http.Client) *ListOculusSubscriptionGroupsParams {
	var ()
	return &ListOculusSubscriptionGroupsParams{
		HTTPClient: client,
	}
}

/*ListOculusSubscriptionGroupsParams contains all the parameters to send to the API endpoint
for the list oculus subscription groups operation typically these are written to a http.Request
*/
type ListOculusSubscriptionGroupsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the list oculus subscription groups params
func (o *ListOculusSubscriptionGroupsParams) WithTimeout(timeout time.Duration) *ListOculusSubscriptionGroupsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the list oculus subscription groups params
func (o *ListOculusSubscriptionGroupsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the list oculus subscription groups params
func (o *ListOculusSubscriptionGroupsParams) WithContext(ctx context.Context) *ListOculusSubscriptionGroupsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the list oculus subscription groups params
func (o *ListOculusSubscriptionGroupsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the list oculus subscription groups params
func (o *ListOculusSubscriptionGroupsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the list oculus subscription groups params
func (o *ListOculusSubscriptionGroupsParams) WithHTTPClient(client *http.Client) *ListOculusSubscriptionGroupsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the list oculus subscription groups params
func (o *ListOculusSubscriptionGroupsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the list oculus subscription groups params
func (o *ListOculusSubscriptionGroupsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ListOculusSubscriptionGroupsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the list oculus subscription groups params
func (o *ListOculusSubscriptionGroupsParams) WithNamespace(namespace string) *ListOculusSubscriptionGroupsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the list oculus subscription groups params
func (o *ListOculusSubscriptionGroupsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *ListOculusSubscriptionGroupsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
