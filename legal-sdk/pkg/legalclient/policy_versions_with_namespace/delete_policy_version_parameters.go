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

// NewDeletePolicyVersionParams creates a new DeletePolicyVersionParams object
// with the default values initialized.
func NewDeletePolicyVersionParams() *DeletePolicyVersionParams {
	var ()
	return &DeletePolicyVersionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeletePolicyVersionParamsWithTimeout creates a new DeletePolicyVersionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeletePolicyVersionParamsWithTimeout(timeout time.Duration) *DeletePolicyVersionParams {
	var ()
	return &DeletePolicyVersionParams{

		timeout: timeout,
	}
}

// NewDeletePolicyVersionParamsWithContext creates a new DeletePolicyVersionParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeletePolicyVersionParamsWithContext(ctx context.Context) *DeletePolicyVersionParams {
	var ()
	return &DeletePolicyVersionParams{

		Context: ctx,
	}
}

// NewDeletePolicyVersionParamsWithHTTPClient creates a new DeletePolicyVersionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeletePolicyVersionParamsWithHTTPClient(client *http.Client) *DeletePolicyVersionParams {
	var ()
	return &DeletePolicyVersionParams{
		HTTPClient: client,
	}
}

/*DeletePolicyVersionParams contains all the parameters to send to the API endpoint
for the delete policy version operation typically these are written to a http.Request
*/
type DeletePolicyVersionParams struct {

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

// WithTimeout adds the timeout to the delete policy version params
func (o *DeletePolicyVersionParams) WithTimeout(timeout time.Duration) *DeletePolicyVersionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete policy version params
func (o *DeletePolicyVersionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete policy version params
func (o *DeletePolicyVersionParams) WithContext(ctx context.Context) *DeletePolicyVersionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete policy version params
func (o *DeletePolicyVersionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete policy version params
func (o *DeletePolicyVersionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete policy version params
func (o *DeletePolicyVersionParams) WithHTTPClient(client *http.Client) *DeletePolicyVersionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete policy version params
func (o *DeletePolicyVersionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete policy version params
func (o *DeletePolicyVersionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeletePolicyVersionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the delete policy version params
func (o *DeletePolicyVersionParams) WithNamespace(namespace string) *DeletePolicyVersionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete policy version params
func (o *DeletePolicyVersionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPolicyVersionID adds the policyVersionID to the delete policy version params
func (o *DeletePolicyVersionParams) WithPolicyVersionID(policyVersionID string) *DeletePolicyVersionParams {
	o.SetPolicyVersionID(policyVersionID)
	return o
}

// SetPolicyVersionID adds the policyVersionId to the delete policy version params
func (o *DeletePolicyVersionParams) SetPolicyVersionID(policyVersionID string) {
	o.PolicyVersionID = policyVersionID
}

// WriteToRequest writes these params to a swagger request
func (o *DeletePolicyVersionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
