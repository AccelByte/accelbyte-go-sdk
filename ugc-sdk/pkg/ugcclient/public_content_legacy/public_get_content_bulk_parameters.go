// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_content_legacy

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
)

// NewPublicGetContentBulkParams creates a new PublicGetContentBulkParams object
// with the default values initialized.
func NewPublicGetContentBulkParams() *PublicGetContentBulkParams {
	var ()
	return &PublicGetContentBulkParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetContentBulkParamsWithTimeout creates a new PublicGetContentBulkParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetContentBulkParamsWithTimeout(timeout time.Duration) *PublicGetContentBulkParams {
	var ()
	return &PublicGetContentBulkParams{

		timeout: timeout,
	}
}

// NewPublicGetContentBulkParamsWithContext creates a new PublicGetContentBulkParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetContentBulkParamsWithContext(ctx context.Context) *PublicGetContentBulkParams {
	var ()
	return &PublicGetContentBulkParams{

		Context: ctx,
	}
}

// NewPublicGetContentBulkParamsWithHTTPClient creates a new PublicGetContentBulkParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetContentBulkParamsWithHTTPClient(client *http.Client) *PublicGetContentBulkParams {
	var ()
	return &PublicGetContentBulkParams{
		HTTPClient: client,
	}
}

/*PublicGetContentBulkParams contains all the parameters to send to the API endpoint
for the public get content bulk operation typically these are written to a http.Request
*/
type PublicGetContentBulkParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *ugcclientmodels.ModelsPublicGetContentBulkRequest
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public get content bulk params
func (o *PublicGetContentBulkParams) WithTimeout(timeout time.Duration) *PublicGetContentBulkParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get content bulk params
func (o *PublicGetContentBulkParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get content bulk params
func (o *PublicGetContentBulkParams) WithContext(ctx context.Context) *PublicGetContentBulkParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get content bulk params
func (o *PublicGetContentBulkParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get content bulk params
func (o *PublicGetContentBulkParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get content bulk params
func (o *PublicGetContentBulkParams) WithHTTPClient(client *http.Client) *PublicGetContentBulkParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get content bulk params
func (o *PublicGetContentBulkParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get content bulk params
func (o *PublicGetContentBulkParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the public get content bulk params
func (o *PublicGetContentBulkParams) WithBody(body *ugcclientmodels.ModelsPublicGetContentBulkRequest) *PublicGetContentBulkParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public get content bulk params
func (o *PublicGetContentBulkParams) SetBody(body *ugcclientmodels.ModelsPublicGetContentBulkRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the public get content bulk params
func (o *PublicGetContentBulkParams) WithNamespace(namespace string) *PublicGetContentBulkParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get content bulk params
func (o *PublicGetContentBulkParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetContentBulkParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
