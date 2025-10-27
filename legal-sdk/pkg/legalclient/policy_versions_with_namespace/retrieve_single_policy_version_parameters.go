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

// NewRetrieveSinglePolicyVersionParams creates a new RetrieveSinglePolicyVersionParams object
// with the default values initialized.
func NewRetrieveSinglePolicyVersionParams() *RetrieveSinglePolicyVersionParams {
	var ()
	return &RetrieveSinglePolicyVersionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewRetrieveSinglePolicyVersionParamsWithTimeout creates a new RetrieveSinglePolicyVersionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRetrieveSinglePolicyVersionParamsWithTimeout(timeout time.Duration) *RetrieveSinglePolicyVersionParams {
	var ()
	return &RetrieveSinglePolicyVersionParams{

		timeout: timeout,
	}
}

// NewRetrieveSinglePolicyVersionParamsWithContext creates a new RetrieveSinglePolicyVersionParams object
// with the default values initialized, and the ability to set a context for a request
func NewRetrieveSinglePolicyVersionParamsWithContext(ctx context.Context) *RetrieveSinglePolicyVersionParams {
	var ()
	return &RetrieveSinglePolicyVersionParams{

		Context: ctx,
	}
}

// NewRetrieveSinglePolicyVersionParamsWithHTTPClient creates a new RetrieveSinglePolicyVersionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRetrieveSinglePolicyVersionParamsWithHTTPClient(client *http.Client) *RetrieveSinglePolicyVersionParams {
	var ()
	return &RetrieveSinglePolicyVersionParams{
		HTTPClient: client,
	}
}

/*RetrieveSinglePolicyVersionParams contains all the parameters to send to the API endpoint
for the retrieve single policy version operation typically these are written to a http.Request
*/
type RetrieveSinglePolicyVersionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*PolicyID
	  Policy Id

	*/
	PolicyID string
	/*VersionID
	  Version Id

	*/
	VersionID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the retrieve single policy version params
func (o *RetrieveSinglePolicyVersionParams) WithTimeout(timeout time.Duration) *RetrieveSinglePolicyVersionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the retrieve single policy version params
func (o *RetrieveSinglePolicyVersionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the retrieve single policy version params
func (o *RetrieveSinglePolicyVersionParams) WithContext(ctx context.Context) *RetrieveSinglePolicyVersionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the retrieve single policy version params
func (o *RetrieveSinglePolicyVersionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the retrieve single policy version params
func (o *RetrieveSinglePolicyVersionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the retrieve single policy version params
func (o *RetrieveSinglePolicyVersionParams) WithHTTPClient(client *http.Client) *RetrieveSinglePolicyVersionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the retrieve single policy version params
func (o *RetrieveSinglePolicyVersionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the retrieve single policy version params
func (o *RetrieveSinglePolicyVersionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *RetrieveSinglePolicyVersionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the retrieve single policy version params
func (o *RetrieveSinglePolicyVersionParams) WithNamespace(namespace string) *RetrieveSinglePolicyVersionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the retrieve single policy version params
func (o *RetrieveSinglePolicyVersionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPolicyID adds the policyID to the retrieve single policy version params
func (o *RetrieveSinglePolicyVersionParams) WithPolicyID(policyID string) *RetrieveSinglePolicyVersionParams {
	o.SetPolicyID(policyID)
	return o
}

// SetPolicyID adds the policyId to the retrieve single policy version params
func (o *RetrieveSinglePolicyVersionParams) SetPolicyID(policyID string) {
	o.PolicyID = policyID
}

// WithVersionID adds the versionID to the retrieve single policy version params
func (o *RetrieveSinglePolicyVersionParams) WithVersionID(versionID *string) *RetrieveSinglePolicyVersionParams {
	o.SetVersionID(versionID)
	return o
}

// SetVersionID adds the versionId to the retrieve single policy version params
func (o *RetrieveSinglePolicyVersionParams) SetVersionID(versionID *string) {
	o.VersionID = versionID
}

// WriteToRequest writes these params to a swagger request
func (o *RetrieveSinglePolicyVersionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param policyId
	if err := r.SetPathParam("policyId", o.PolicyID); err != nil {
		return err
	}

	if o.VersionID != nil {

		// query param versionId
		var qrVersionID string
		if o.VersionID != nil {
			qrVersionID = *o.VersionID
		}
		qVersionID := qrVersionID
		if qVersionID != "" {
			if err := r.SetQueryParam("versionId", qVersionID); err != nil {
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
