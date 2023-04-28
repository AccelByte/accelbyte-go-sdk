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

// NewDeleteNamespaceSlotConfigParams creates a new DeleteNamespaceSlotConfigParams object
// with the default values initialized.
func NewDeleteNamespaceSlotConfigParams() *DeleteNamespaceSlotConfigParams {
	var ()
	return &DeleteNamespaceSlotConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteNamespaceSlotConfigParamsWithTimeout creates a new DeleteNamespaceSlotConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteNamespaceSlotConfigParamsWithTimeout(timeout time.Duration) *DeleteNamespaceSlotConfigParams {
	var ()
	return &DeleteNamespaceSlotConfigParams{

		timeout: timeout,
	}
}

// NewDeleteNamespaceSlotConfigParamsWithContext creates a new DeleteNamespaceSlotConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteNamespaceSlotConfigParamsWithContext(ctx context.Context) *DeleteNamespaceSlotConfigParams {
	var ()
	return &DeleteNamespaceSlotConfigParams{

		Context: ctx,
	}
}

// NewDeleteNamespaceSlotConfigParamsWithHTTPClient creates a new DeleteNamespaceSlotConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteNamespaceSlotConfigParamsWithHTTPClient(client *http.Client) *DeleteNamespaceSlotConfigParams {
	var ()
	return &DeleteNamespaceSlotConfigParams{
		HTTPClient: client,
	}
}

/*DeleteNamespaceSlotConfigParams contains all the parameters to send to the API endpoint
for the delete namespace slot config operation typically these are written to a http.Request
*/
type DeleteNamespaceSlotConfigParams struct {

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

// WithTimeout adds the timeout to the delete namespace slot config params
func (o *DeleteNamespaceSlotConfigParams) WithTimeout(timeout time.Duration) *DeleteNamespaceSlotConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete namespace slot config params
func (o *DeleteNamespaceSlotConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete namespace slot config params
func (o *DeleteNamespaceSlotConfigParams) WithContext(ctx context.Context) *DeleteNamespaceSlotConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete namespace slot config params
func (o *DeleteNamespaceSlotConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete namespace slot config params
func (o *DeleteNamespaceSlotConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete namespace slot config params
func (o *DeleteNamespaceSlotConfigParams) WithHTTPClient(client *http.Client) *DeleteNamespaceSlotConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete namespace slot config params
func (o *DeleteNamespaceSlotConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete namespace slot config params
func (o *DeleteNamespaceSlotConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the delete namespace slot config params
func (o *DeleteNamespaceSlotConfigParams) WithNamespace(namespace string) *DeleteNamespaceSlotConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete namespace slot config params
func (o *DeleteNamespaceSlotConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteNamespaceSlotConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
