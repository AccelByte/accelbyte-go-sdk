// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package o_auth2_0

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

// NewGetAuthorizationServerMetadataWithNamespaceParams creates a new GetAuthorizationServerMetadataWithNamespaceParams object
// with the default values initialized.
func NewGetAuthorizationServerMetadataWithNamespaceParams() *GetAuthorizationServerMetadataWithNamespaceParams {
	var ()
	return &GetAuthorizationServerMetadataWithNamespaceParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetAuthorizationServerMetadataWithNamespaceParamsWithTimeout creates a new GetAuthorizationServerMetadataWithNamespaceParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetAuthorizationServerMetadataWithNamespaceParamsWithTimeout(timeout time.Duration) *GetAuthorizationServerMetadataWithNamespaceParams {
	var ()
	return &GetAuthorizationServerMetadataWithNamespaceParams{

		timeout: timeout,
	}
}

// NewGetAuthorizationServerMetadataWithNamespaceParamsWithContext creates a new GetAuthorizationServerMetadataWithNamespaceParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetAuthorizationServerMetadataWithNamespaceParamsWithContext(ctx context.Context) *GetAuthorizationServerMetadataWithNamespaceParams {
	var ()
	return &GetAuthorizationServerMetadataWithNamespaceParams{

		Context: ctx,
	}
}

// NewGetAuthorizationServerMetadataWithNamespaceParamsWithHTTPClient creates a new GetAuthorizationServerMetadataWithNamespaceParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetAuthorizationServerMetadataWithNamespaceParamsWithHTTPClient(client *http.Client) *GetAuthorizationServerMetadataWithNamespaceParams {
	var ()
	return &GetAuthorizationServerMetadataWithNamespaceParams{
		HTTPClient: client,
	}
}

/*GetAuthorizationServerMetadataWithNamespaceParams contains all the parameters to send to the API endpoint
for the get authorization server metadata with namespace operation typically these are written to a http.Request
*/
type GetAuthorizationServerMetadataWithNamespaceParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Accepts alphanumeric, with hyphens allowed between segments

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get authorization server metadata with namespace params
func (o *GetAuthorizationServerMetadataWithNamespaceParams) WithTimeout(timeout time.Duration) *GetAuthorizationServerMetadataWithNamespaceParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get authorization server metadata with namespace params
func (o *GetAuthorizationServerMetadataWithNamespaceParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get authorization server metadata with namespace params
func (o *GetAuthorizationServerMetadataWithNamespaceParams) WithContext(ctx context.Context) *GetAuthorizationServerMetadataWithNamespaceParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get authorization server metadata with namespace params
func (o *GetAuthorizationServerMetadataWithNamespaceParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get authorization server metadata with namespace params
func (o *GetAuthorizationServerMetadataWithNamespaceParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get authorization server metadata with namespace params
func (o *GetAuthorizationServerMetadataWithNamespaceParams) WithHTTPClient(client *http.Client) *GetAuthorizationServerMetadataWithNamespaceParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get authorization server metadata with namespace params
func (o *GetAuthorizationServerMetadataWithNamespaceParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get authorization server metadata with namespace params
func (o *GetAuthorizationServerMetadataWithNamespaceParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetAuthorizationServerMetadataWithNamespaceParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get authorization server metadata with namespace params
func (o *GetAuthorizationServerMetadataWithNamespaceParams) WithNamespace(namespace string) *GetAuthorizationServerMetadataWithNamespaceParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get authorization server metadata with namespace params
func (o *GetAuthorizationServerMetadataWithNamespaceParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetAuthorizationServerMetadataWithNamespaceParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
