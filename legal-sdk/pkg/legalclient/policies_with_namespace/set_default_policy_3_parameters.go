// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package policies_with_namespace

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

// NewSetDefaultPolicy3Params creates a new SetDefaultPolicy3Params object
// with the default values initialized.
func NewSetDefaultPolicy3Params() *SetDefaultPolicy3Params {
	var ()
	return &SetDefaultPolicy3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewSetDefaultPolicy3ParamsWithTimeout creates a new SetDefaultPolicy3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewSetDefaultPolicy3ParamsWithTimeout(timeout time.Duration) *SetDefaultPolicy3Params {
	var ()
	return &SetDefaultPolicy3Params{

		timeout: timeout,
	}
}

// NewSetDefaultPolicy3ParamsWithContext creates a new SetDefaultPolicy3Params object
// with the default values initialized, and the ability to set a context for a request
func NewSetDefaultPolicy3ParamsWithContext(ctx context.Context) *SetDefaultPolicy3Params {
	var ()
	return &SetDefaultPolicy3Params{

		Context: ctx,
	}
}

// NewSetDefaultPolicy3ParamsWithHTTPClient creates a new SetDefaultPolicy3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSetDefaultPolicy3ParamsWithHTTPClient(client *http.Client) *SetDefaultPolicy3Params {
	var ()
	return &SetDefaultPolicy3Params{
		HTTPClient: client,
	}
}

/*SetDefaultPolicy3Params contains all the parameters to send to the API endpoint
for the set default policy 3 operation typically these are written to a http.Request
*/
type SetDefaultPolicy3Params struct {

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

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the set default policy 3 params
func (o *SetDefaultPolicy3Params) WithTimeout(timeout time.Duration) *SetDefaultPolicy3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the set default policy 3 params
func (o *SetDefaultPolicy3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the set default policy 3 params
func (o *SetDefaultPolicy3Params) WithContext(ctx context.Context) *SetDefaultPolicy3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the set default policy 3 params
func (o *SetDefaultPolicy3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the set default policy 3 params
func (o *SetDefaultPolicy3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the set default policy 3 params
func (o *SetDefaultPolicy3Params) WithHTTPClient(client *http.Client) *SetDefaultPolicy3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the set default policy 3 params
func (o *SetDefaultPolicy3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the set default policy 3 params
func (o *SetDefaultPolicy3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *SetDefaultPolicy3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the set default policy 3 params
func (o *SetDefaultPolicy3Params) WithNamespace(namespace string) *SetDefaultPolicy3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the set default policy 3 params
func (o *SetDefaultPolicy3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPolicyID adds the policyID to the set default policy 3 params
func (o *SetDefaultPolicy3Params) WithPolicyID(policyID string) *SetDefaultPolicy3Params {
	o.SetPolicyID(policyID)
	return o
}

// SetPolicyID adds the policyId to the set default policy 3 params
func (o *SetDefaultPolicy3Params) SetPolicyID(policyID string) {
	o.PolicyID = policyID
}

// WriteToRequest writes these params to a swagger request
func (o *SetDefaultPolicy3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
