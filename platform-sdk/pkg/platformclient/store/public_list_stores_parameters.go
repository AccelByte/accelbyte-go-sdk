// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package store

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

// NewPublicListStoresParams creates a new PublicListStoresParams object
// with the default values initialized.
func NewPublicListStoresParams() *PublicListStoresParams {
	var ()
	return &PublicListStoresParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicListStoresParamsWithTimeout creates a new PublicListStoresParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicListStoresParamsWithTimeout(timeout time.Duration) *PublicListStoresParams {
	var ()
	return &PublicListStoresParams{

		timeout: timeout,
	}
}

// NewPublicListStoresParamsWithContext creates a new PublicListStoresParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicListStoresParamsWithContext(ctx context.Context) *PublicListStoresParams {
	var ()
	return &PublicListStoresParams{

		Context: ctx,
	}
}

// NewPublicListStoresParamsWithHTTPClient creates a new PublicListStoresParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicListStoresParamsWithHTTPClient(client *http.Client) *PublicListStoresParams {
	var ()
	return &PublicListStoresParams{
		HTTPClient: client,
	}
}

/*PublicListStoresParams contains all the parameters to send to the API endpoint
for the public list stores operation typically these are written to a http.Request
*/
type PublicListStoresParams struct {

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

// WithTimeout adds the timeout to the public list stores params
func (o *PublicListStoresParams) WithTimeout(timeout time.Duration) *PublicListStoresParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public list stores params
func (o *PublicListStoresParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public list stores params
func (o *PublicListStoresParams) WithContext(ctx context.Context) *PublicListStoresParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public list stores params
func (o *PublicListStoresParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public list stores params
func (o *PublicListStoresParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public list stores params
func (o *PublicListStoresParams) WithHTTPClient(client *http.Client) *PublicListStoresParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public list stores params
func (o *PublicListStoresParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public list stores params
func (o *PublicListStoresParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicListStoresParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public list stores params
func (o *PublicListStoresParams) WithNamespace(namespace string) *PublicListStoresParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public list stores params
func (o *PublicListStoresParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicListStoresParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
