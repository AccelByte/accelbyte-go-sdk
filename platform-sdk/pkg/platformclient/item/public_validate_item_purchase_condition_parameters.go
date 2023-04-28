// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package item

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

// NewPublicValidateItemPurchaseConditionParams creates a new PublicValidateItemPurchaseConditionParams object
// with the default values initialized.
func NewPublicValidateItemPurchaseConditionParams() *PublicValidateItemPurchaseConditionParams {
	var ()
	return &PublicValidateItemPurchaseConditionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicValidateItemPurchaseConditionParamsWithTimeout creates a new PublicValidateItemPurchaseConditionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicValidateItemPurchaseConditionParamsWithTimeout(timeout time.Duration) *PublicValidateItemPurchaseConditionParams {
	var ()
	return &PublicValidateItemPurchaseConditionParams{

		timeout: timeout,
	}
}

// NewPublicValidateItemPurchaseConditionParamsWithContext creates a new PublicValidateItemPurchaseConditionParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicValidateItemPurchaseConditionParamsWithContext(ctx context.Context) *PublicValidateItemPurchaseConditionParams {
	var ()
	return &PublicValidateItemPurchaseConditionParams{

		Context: ctx,
	}
}

// NewPublicValidateItemPurchaseConditionParamsWithHTTPClient creates a new PublicValidateItemPurchaseConditionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicValidateItemPurchaseConditionParamsWithHTTPClient(client *http.Client) *PublicValidateItemPurchaseConditionParams {
	var ()
	return &PublicValidateItemPurchaseConditionParams{
		HTTPClient: client,
	}
}

/*PublicValidateItemPurchaseConditionParams contains all the parameters to send to the API endpoint
for the public validate item purchase condition operation typically these are written to a http.Request
*/
type PublicValidateItemPurchaseConditionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.ItemPurchaseConditionValidateRequest
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public validate item purchase condition params
func (o *PublicValidateItemPurchaseConditionParams) WithTimeout(timeout time.Duration) *PublicValidateItemPurchaseConditionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public validate item purchase condition params
func (o *PublicValidateItemPurchaseConditionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public validate item purchase condition params
func (o *PublicValidateItemPurchaseConditionParams) WithContext(ctx context.Context) *PublicValidateItemPurchaseConditionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public validate item purchase condition params
func (o *PublicValidateItemPurchaseConditionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public validate item purchase condition params
func (o *PublicValidateItemPurchaseConditionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public validate item purchase condition params
func (o *PublicValidateItemPurchaseConditionParams) WithHTTPClient(client *http.Client) *PublicValidateItemPurchaseConditionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public validate item purchase condition params
func (o *PublicValidateItemPurchaseConditionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public validate item purchase condition params
func (o *PublicValidateItemPurchaseConditionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the public validate item purchase condition params
func (o *PublicValidateItemPurchaseConditionParams) WithBody(body *platformclientmodels.ItemPurchaseConditionValidateRequest) *PublicValidateItemPurchaseConditionParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public validate item purchase condition params
func (o *PublicValidateItemPurchaseConditionParams) SetBody(body *platformclientmodels.ItemPurchaseConditionValidateRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the public validate item purchase condition params
func (o *PublicValidateItemPurchaseConditionParams) WithNamespace(namespace string) *PublicValidateItemPurchaseConditionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public validate item purchase condition params
func (o *PublicValidateItemPurchaseConditionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicValidateItemPurchaseConditionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
