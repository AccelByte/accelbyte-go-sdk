// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package slot_config

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

// NewGetNamespaceSlotConfigParams creates a new GetNamespaceSlotConfigParams object
// with the default values initialized.
func NewGetNamespaceSlotConfigParams() *GetNamespaceSlotConfigParams {
	var ()
	return &GetNamespaceSlotConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetNamespaceSlotConfigParamsWithTimeout creates a new GetNamespaceSlotConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetNamespaceSlotConfigParamsWithTimeout(timeout time.Duration) *GetNamespaceSlotConfigParams {
	var ()
	return &GetNamespaceSlotConfigParams{

		timeout: timeout,
	}
}

// NewGetNamespaceSlotConfigParamsWithContext creates a new GetNamespaceSlotConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetNamespaceSlotConfigParamsWithContext(ctx context.Context) *GetNamespaceSlotConfigParams {
	var ()
	return &GetNamespaceSlotConfigParams{

		Context: ctx,
	}
}

// NewGetNamespaceSlotConfigParamsWithHTTPClient creates a new GetNamespaceSlotConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetNamespaceSlotConfigParamsWithHTTPClient(client *http.Client) *GetNamespaceSlotConfigParams {
	var ()
	return &GetNamespaceSlotConfigParams{
		HTTPClient: client,
	}
}

/*GetNamespaceSlotConfigParams contains all the parameters to send to the API endpoint
for the get namespace slot config operation typically these are written to a http.Request
*/
type GetNamespaceSlotConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get namespace slot config params
func (o *GetNamespaceSlotConfigParams) WithTimeout(timeout time.Duration) *GetNamespaceSlotConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get namespace slot config params
func (o *GetNamespaceSlotConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get namespace slot config params
func (o *GetNamespaceSlotConfigParams) WithContext(ctx context.Context) *GetNamespaceSlotConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get namespace slot config params
func (o *GetNamespaceSlotConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get namespace slot config params
func (o *GetNamespaceSlotConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get namespace slot config params
func (o *GetNamespaceSlotConfigParams) WithHTTPClient(client *http.Client) *GetNamespaceSlotConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get namespace slot config params
func (o *GetNamespaceSlotConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get namespace slot config params
func (o *GetNamespaceSlotConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get namespace slot config params
func (o *GetNamespaceSlotConfigParams) WithNamespace(namespace string) *GetNamespaceSlotConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get namespace slot config params
func (o *GetNamespaceSlotConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetNamespaceSlotConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
