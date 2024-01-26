// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package localized_policy_versions_with_namespace

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

// NewRetrieveSingleLocalizedPolicyVersion1Params creates a new RetrieveSingleLocalizedPolicyVersion1Params object
// with the default values initialized.
func NewRetrieveSingleLocalizedPolicyVersion1Params() *RetrieveSingleLocalizedPolicyVersion1Params {
	var ()
	return &RetrieveSingleLocalizedPolicyVersion1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewRetrieveSingleLocalizedPolicyVersion1ParamsWithTimeout creates a new RetrieveSingleLocalizedPolicyVersion1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewRetrieveSingleLocalizedPolicyVersion1ParamsWithTimeout(timeout time.Duration) *RetrieveSingleLocalizedPolicyVersion1Params {
	var ()
	return &RetrieveSingleLocalizedPolicyVersion1Params{

		timeout: timeout,
	}
}

// NewRetrieveSingleLocalizedPolicyVersion1ParamsWithContext creates a new RetrieveSingleLocalizedPolicyVersion1Params object
// with the default values initialized, and the ability to set a context for a request
func NewRetrieveSingleLocalizedPolicyVersion1ParamsWithContext(ctx context.Context) *RetrieveSingleLocalizedPolicyVersion1Params {
	var ()
	return &RetrieveSingleLocalizedPolicyVersion1Params{

		Context: ctx,
	}
}

// NewRetrieveSingleLocalizedPolicyVersion1ParamsWithHTTPClient creates a new RetrieveSingleLocalizedPolicyVersion1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRetrieveSingleLocalizedPolicyVersion1ParamsWithHTTPClient(client *http.Client) *RetrieveSingleLocalizedPolicyVersion1Params {
	var ()
	return &RetrieveSingleLocalizedPolicyVersion1Params{
		HTTPClient: client,
	}
}

/*RetrieveSingleLocalizedPolicyVersion1Params contains all the parameters to send to the API endpoint
for the retrieve single localized policy version 1 operation typically these are written to a http.Request
*/
type RetrieveSingleLocalizedPolicyVersion1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*LocalizedPolicyVersionID
	  Localized Policy Version Id

	*/
	LocalizedPolicyVersionID string
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

// WithTimeout adds the timeout to the retrieve single localized policy version 1 params
func (o *RetrieveSingleLocalizedPolicyVersion1Params) WithTimeout(timeout time.Duration) *RetrieveSingleLocalizedPolicyVersion1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the retrieve single localized policy version 1 params
func (o *RetrieveSingleLocalizedPolicyVersion1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the retrieve single localized policy version 1 params
func (o *RetrieveSingleLocalizedPolicyVersion1Params) WithContext(ctx context.Context) *RetrieveSingleLocalizedPolicyVersion1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the retrieve single localized policy version 1 params
func (o *RetrieveSingleLocalizedPolicyVersion1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the retrieve single localized policy version 1 params
func (o *RetrieveSingleLocalizedPolicyVersion1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the retrieve single localized policy version 1 params
func (o *RetrieveSingleLocalizedPolicyVersion1Params) WithHTTPClient(client *http.Client) *RetrieveSingleLocalizedPolicyVersion1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the retrieve single localized policy version 1 params
func (o *RetrieveSingleLocalizedPolicyVersion1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the retrieve single localized policy version 1 params
func (o *RetrieveSingleLocalizedPolicyVersion1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *RetrieveSingleLocalizedPolicyVersion1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithLocalizedPolicyVersionID adds the localizedPolicyVersionID to the retrieve single localized policy version 1 params
func (o *RetrieveSingleLocalizedPolicyVersion1Params) WithLocalizedPolicyVersionID(localizedPolicyVersionID string) *RetrieveSingleLocalizedPolicyVersion1Params {
	o.SetLocalizedPolicyVersionID(localizedPolicyVersionID)
	return o
}

// SetLocalizedPolicyVersionID adds the localizedPolicyVersionId to the retrieve single localized policy version 1 params
func (o *RetrieveSingleLocalizedPolicyVersion1Params) SetLocalizedPolicyVersionID(localizedPolicyVersionID string) {
	o.LocalizedPolicyVersionID = localizedPolicyVersionID
}

// WithNamespace adds the namespace to the retrieve single localized policy version 1 params
func (o *RetrieveSingleLocalizedPolicyVersion1Params) WithNamespace(namespace string) *RetrieveSingleLocalizedPolicyVersion1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the retrieve single localized policy version 1 params
func (o *RetrieveSingleLocalizedPolicyVersion1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *RetrieveSingleLocalizedPolicyVersion1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param localizedPolicyVersionId
	if err := r.SetPathParam("localizedPolicyVersionId", o.LocalizedPolicyVersionID); err != nil {
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
