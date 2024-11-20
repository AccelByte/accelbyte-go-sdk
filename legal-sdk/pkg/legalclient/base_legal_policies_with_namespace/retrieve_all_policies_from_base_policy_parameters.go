// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package base_legal_policies_with_namespace

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

// NewRetrieveAllPoliciesFromBasePolicyParams creates a new RetrieveAllPoliciesFromBasePolicyParams object
// with the default values initialized.
func NewRetrieveAllPoliciesFromBasePolicyParams() *RetrieveAllPoliciesFromBasePolicyParams {
	var ()
	return &RetrieveAllPoliciesFromBasePolicyParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewRetrieveAllPoliciesFromBasePolicyParamsWithTimeout creates a new RetrieveAllPoliciesFromBasePolicyParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRetrieveAllPoliciesFromBasePolicyParamsWithTimeout(timeout time.Duration) *RetrieveAllPoliciesFromBasePolicyParams {
	var ()
	return &RetrieveAllPoliciesFromBasePolicyParams{

		timeout: timeout,
	}
}

// NewRetrieveAllPoliciesFromBasePolicyParamsWithContext creates a new RetrieveAllPoliciesFromBasePolicyParams object
// with the default values initialized, and the ability to set a context for a request
func NewRetrieveAllPoliciesFromBasePolicyParamsWithContext(ctx context.Context) *RetrieveAllPoliciesFromBasePolicyParams {
	var ()
	return &RetrieveAllPoliciesFromBasePolicyParams{

		Context: ctx,
	}
}

// NewRetrieveAllPoliciesFromBasePolicyParamsWithHTTPClient creates a new RetrieveAllPoliciesFromBasePolicyParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRetrieveAllPoliciesFromBasePolicyParamsWithHTTPClient(client *http.Client) *RetrieveAllPoliciesFromBasePolicyParams {
	var ()
	return &RetrieveAllPoliciesFromBasePolicyParams{
		HTTPClient: client,
	}
}

/*RetrieveAllPoliciesFromBasePolicyParams contains all the parameters to send to the API endpoint
for the retrieve all policies from base policy operation typically these are written to a http.Request
*/
type RetrieveAllPoliciesFromBasePolicyParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*BasePolicyID
	  BasePolicy Id

	*/
	BasePolicyID string
	/*Namespace
	  Namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the retrieve all policies from base policy params
func (o *RetrieveAllPoliciesFromBasePolicyParams) WithTimeout(timeout time.Duration) *RetrieveAllPoliciesFromBasePolicyParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the retrieve all policies from base policy params
func (o *RetrieveAllPoliciesFromBasePolicyParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the retrieve all policies from base policy params
func (o *RetrieveAllPoliciesFromBasePolicyParams) WithContext(ctx context.Context) *RetrieveAllPoliciesFromBasePolicyParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the retrieve all policies from base policy params
func (o *RetrieveAllPoliciesFromBasePolicyParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the retrieve all policies from base policy params
func (o *RetrieveAllPoliciesFromBasePolicyParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the retrieve all policies from base policy params
func (o *RetrieveAllPoliciesFromBasePolicyParams) WithHTTPClient(client *http.Client) *RetrieveAllPoliciesFromBasePolicyParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the retrieve all policies from base policy params
func (o *RetrieveAllPoliciesFromBasePolicyParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the retrieve all policies from base policy params
func (o *RetrieveAllPoliciesFromBasePolicyParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *RetrieveAllPoliciesFromBasePolicyParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBasePolicyID adds the basePolicyID to the retrieve all policies from base policy params
func (o *RetrieveAllPoliciesFromBasePolicyParams) WithBasePolicyID(basePolicyID string) *RetrieveAllPoliciesFromBasePolicyParams {
	o.SetBasePolicyID(basePolicyID)
	return o
}

// SetBasePolicyID adds the basePolicyId to the retrieve all policies from base policy params
func (o *RetrieveAllPoliciesFromBasePolicyParams) SetBasePolicyID(basePolicyID string) {
	o.BasePolicyID = basePolicyID
}

// WithNamespace adds the namespace to the retrieve all policies from base policy params
func (o *RetrieveAllPoliciesFromBasePolicyParams) WithNamespace(namespace string) *RetrieveAllPoliciesFromBasePolicyParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the retrieve all policies from base policy params
func (o *RetrieveAllPoliciesFromBasePolicyParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *RetrieveAllPoliciesFromBasePolicyParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param basePolicyId
	if err := r.SetPathParam("basePolicyId", o.BasePolicyID); err != nil {
		return err
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
