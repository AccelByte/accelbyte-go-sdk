// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package policy_versions_with_namespace

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// NewPublishPolicyVersion1Params creates a new PublishPolicyVersion1Params object
// with the default values initialized.
func NewPublishPolicyVersion1Params() *PublishPolicyVersion1Params {
	var (
		shouldNotifyDefault = bool(true)
	)
	return &PublishPolicyVersion1Params{
		ShouldNotify: &shouldNotifyDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewPublishPolicyVersion1ParamsWithTimeout creates a new PublishPolicyVersion1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublishPolicyVersion1ParamsWithTimeout(timeout time.Duration) *PublishPolicyVersion1Params {
	var (
		shouldNotifyDefault = bool(true)
	)
	return &PublishPolicyVersion1Params{
		ShouldNotify: &shouldNotifyDefault,

		timeout: timeout,
	}
}

// NewPublishPolicyVersion1ParamsWithContext creates a new PublishPolicyVersion1Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublishPolicyVersion1ParamsWithContext(ctx context.Context) *PublishPolicyVersion1Params {
	var (
		shouldNotifyDefault = bool(true)
	)
	return &PublishPolicyVersion1Params{
		ShouldNotify: &shouldNotifyDefault,

		Context: ctx,
	}
}

// NewPublishPolicyVersion1ParamsWithHTTPClient creates a new PublishPolicyVersion1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublishPolicyVersion1ParamsWithHTTPClient(client *http.Client) *PublishPolicyVersion1Params {
	var (
		shouldNotifyDefault = bool(true)
	)
	return &PublishPolicyVersion1Params{
		ShouldNotify: &shouldNotifyDefault,
		HTTPClient:   client,
	}
}

/*PublishPolicyVersion1Params contains all the parameters to send to the API endpoint
for the publish policy version 1 operation typically these are written to a http.Request
*/
type PublishPolicyVersion1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*PolicyVersionID
	  Policy Version Id

	*/
	PolicyVersionID string
	/*ShouldNotify
	  Should Notify

	*/
	ShouldNotify *bool

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the publish policy version 1 params
func (o *PublishPolicyVersion1Params) WithTimeout(timeout time.Duration) *PublishPolicyVersion1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the publish policy version 1 params
func (o *PublishPolicyVersion1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the publish policy version 1 params
func (o *PublishPolicyVersion1Params) WithContext(ctx context.Context) *PublishPolicyVersion1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the publish policy version 1 params
func (o *PublishPolicyVersion1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the publish policy version 1 params
func (o *PublishPolicyVersion1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the publish policy version 1 params
func (o *PublishPolicyVersion1Params) WithHTTPClient(client *http.Client) *PublishPolicyVersion1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the publish policy version 1 params
func (o *PublishPolicyVersion1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the publish policy version 1 params
func (o *PublishPolicyVersion1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the publish policy version 1 params
func (o *PublishPolicyVersion1Params) WithNamespace(namespace string) *PublishPolicyVersion1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the publish policy version 1 params
func (o *PublishPolicyVersion1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPolicyVersionID adds the policyVersionID to the publish policy version 1 params
func (o *PublishPolicyVersion1Params) WithPolicyVersionID(policyVersionID string) *PublishPolicyVersion1Params {
	o.SetPolicyVersionID(policyVersionID)
	return o
}

// SetPolicyVersionID adds the policyVersionId to the publish policy version 1 params
func (o *PublishPolicyVersion1Params) SetPolicyVersionID(policyVersionID string) {
	o.PolicyVersionID = policyVersionID
}

// WithShouldNotify adds the shouldNotify to the publish policy version 1 params
func (o *PublishPolicyVersion1Params) WithShouldNotify(shouldNotify *bool) *PublishPolicyVersion1Params {
	o.SetShouldNotify(shouldNotify)
	return o
}

// SetShouldNotify adds the shouldNotify to the publish policy version 1 params
func (o *PublishPolicyVersion1Params) SetShouldNotify(shouldNotify *bool) {
	o.ShouldNotify = shouldNotify
}

// WriteToRequest writes these params to a swagger request
func (o *PublishPolicyVersion1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param policyVersionId
	if err := r.SetPathParam("policyVersionId", o.PolicyVersionID); err != nil {
		return err
	}

	if o.ShouldNotify != nil {

		// query param shouldNotify
		var qrShouldNotify bool
		if o.ShouldNotify != nil {
			qrShouldNotify = *o.ShouldNotify
		}
		qShouldNotify := swag.FormatBool(qrShouldNotify)
		if qShouldNotify != "" {
			if err := r.SetQueryParam("shouldNotify", qShouldNotify); err != nil {
				return err
			}
		}

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
