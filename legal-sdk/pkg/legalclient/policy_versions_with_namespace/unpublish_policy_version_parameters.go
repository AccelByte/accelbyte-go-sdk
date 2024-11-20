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
)

// NewUnpublishPolicyVersionParams creates a new UnpublishPolicyVersionParams object
// with the default values initialized.
func NewUnpublishPolicyVersionParams() *UnpublishPolicyVersionParams {
	var ()
	return &UnpublishPolicyVersionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUnpublishPolicyVersionParamsWithTimeout creates a new UnpublishPolicyVersionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUnpublishPolicyVersionParamsWithTimeout(timeout time.Duration) *UnpublishPolicyVersionParams {
	var ()
	return &UnpublishPolicyVersionParams{

		timeout: timeout,
	}
}

// NewUnpublishPolicyVersionParamsWithContext creates a new UnpublishPolicyVersionParams object
// with the default values initialized, and the ability to set a context for a request
func NewUnpublishPolicyVersionParamsWithContext(ctx context.Context) *UnpublishPolicyVersionParams {
	var ()
	return &UnpublishPolicyVersionParams{

		Context: ctx,
	}
}

// NewUnpublishPolicyVersionParamsWithHTTPClient creates a new UnpublishPolicyVersionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUnpublishPolicyVersionParamsWithHTTPClient(client *http.Client) *UnpublishPolicyVersionParams {
	var ()
	return &UnpublishPolicyVersionParams{
		HTTPClient: client,
	}
}

/*UnpublishPolicyVersionParams contains all the parameters to send to the API endpoint
for the unpublish policy version operation typically these are written to a http.Request
*/
type UnpublishPolicyVersionParams struct {

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

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the unpublish policy version params
func (o *UnpublishPolicyVersionParams) WithTimeout(timeout time.Duration) *UnpublishPolicyVersionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the unpublish policy version params
func (o *UnpublishPolicyVersionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the unpublish policy version params
func (o *UnpublishPolicyVersionParams) WithContext(ctx context.Context) *UnpublishPolicyVersionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the unpublish policy version params
func (o *UnpublishPolicyVersionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the unpublish policy version params
func (o *UnpublishPolicyVersionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the unpublish policy version params
func (o *UnpublishPolicyVersionParams) WithHTTPClient(client *http.Client) *UnpublishPolicyVersionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the unpublish policy version params
func (o *UnpublishPolicyVersionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the unpublish policy version params
func (o *UnpublishPolicyVersionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UnpublishPolicyVersionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the unpublish policy version params
func (o *UnpublishPolicyVersionParams) WithNamespace(namespace string) *UnpublishPolicyVersionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the unpublish policy version params
func (o *UnpublishPolicyVersionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPolicyVersionID adds the policyVersionID to the unpublish policy version params
func (o *UnpublishPolicyVersionParams) WithPolicyVersionID(policyVersionID string) *UnpublishPolicyVersionParams {
	o.SetPolicyVersionID(policyVersionID)
	return o
}

// SetPolicyVersionID adds the policyVersionId to the unpublish policy version params
func (o *UnpublishPolicyVersionParams) SetPolicyVersionID(policyVersionID string) {
	o.PolicyVersionID = policyVersionID
}

// WriteToRequest writes these params to a swagger request
func (o *UnpublishPolicyVersionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
