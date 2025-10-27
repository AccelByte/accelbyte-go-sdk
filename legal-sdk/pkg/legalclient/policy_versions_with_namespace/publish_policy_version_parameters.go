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

// NewPublishPolicyVersionParams creates a new PublishPolicyVersionParams object
// with the default values initialized.
func NewPublishPolicyVersionParams() *PublishPolicyVersionParams {
	var (
		shouldNotifyDefault = bool(true)
	)
	return &PublishPolicyVersionParams{
		ShouldNotify: &shouldNotifyDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewPublishPolicyVersionParamsWithTimeout creates a new PublishPolicyVersionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublishPolicyVersionParamsWithTimeout(timeout time.Duration) *PublishPolicyVersionParams {
	var (
		shouldNotifyDefault = bool(true)
	)
	return &PublishPolicyVersionParams{
		ShouldNotify: &shouldNotifyDefault,

		timeout: timeout,
	}
}

// NewPublishPolicyVersionParamsWithContext creates a new PublishPolicyVersionParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublishPolicyVersionParamsWithContext(ctx context.Context) *PublishPolicyVersionParams {
	var (
		shouldNotifyDefault = bool(true)
	)
	return &PublishPolicyVersionParams{
		ShouldNotify: &shouldNotifyDefault,

		Context: ctx,
	}
}

// NewPublishPolicyVersionParamsWithHTTPClient creates a new PublishPolicyVersionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublishPolicyVersionParamsWithHTTPClient(client *http.Client) *PublishPolicyVersionParams {
	var (
		shouldNotifyDefault = bool(true)
	)
	return &PublishPolicyVersionParams{
		ShouldNotify: &shouldNotifyDefault,
		HTTPClient:   client,
	}
}

/*PublishPolicyVersionParams contains all the parameters to send to the API endpoint
for the publish policy version operation typically these are written to a http.Request
*/
type PublishPolicyVersionParams struct {

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

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the publish policy version params
func (o *PublishPolicyVersionParams) WithTimeout(timeout time.Duration) *PublishPolicyVersionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the publish policy version params
func (o *PublishPolicyVersionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the publish policy version params
func (o *PublishPolicyVersionParams) WithContext(ctx context.Context) *PublishPolicyVersionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the publish policy version params
func (o *PublishPolicyVersionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the publish policy version params
func (o *PublishPolicyVersionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the publish policy version params
func (o *PublishPolicyVersionParams) WithHTTPClient(client *http.Client) *PublishPolicyVersionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the publish policy version params
func (o *PublishPolicyVersionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the publish policy version params
func (o *PublishPolicyVersionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublishPolicyVersionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the publish policy version params
func (o *PublishPolicyVersionParams) WithNamespace(namespace string) *PublishPolicyVersionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the publish policy version params
func (o *PublishPolicyVersionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPolicyVersionID adds the policyVersionID to the publish policy version params
func (o *PublishPolicyVersionParams) WithPolicyVersionID(policyVersionID string) *PublishPolicyVersionParams {
	o.SetPolicyVersionID(policyVersionID)
	return o
}

// SetPolicyVersionID adds the policyVersionId to the publish policy version params
func (o *PublishPolicyVersionParams) SetPolicyVersionID(policyVersionID string) {
	o.PolicyVersionID = policyVersionID
}

// WithShouldNotify adds the shouldNotify to the publish policy version params
func (o *PublishPolicyVersionParams) WithShouldNotify(shouldNotify *bool) *PublishPolicyVersionParams {
	o.SetShouldNotify(shouldNotify)
	return o
}

// SetShouldNotify adds the shouldNotify to the publish policy version params
func (o *PublishPolicyVersionParams) SetShouldNotify(shouldNotify *bool) {
	o.ShouldNotify = shouldNotify
}

// WriteToRequest writes these params to a swagger request
func (o *PublishPolicyVersionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
