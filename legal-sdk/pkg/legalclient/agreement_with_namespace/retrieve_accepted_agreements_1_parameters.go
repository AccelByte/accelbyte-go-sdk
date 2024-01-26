// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package agreement_with_namespace

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

// NewRetrieveAcceptedAgreements1Params creates a new RetrieveAcceptedAgreements1Params object
// with the default values initialized.
func NewRetrieveAcceptedAgreements1Params() *RetrieveAcceptedAgreements1Params {
	var (
		excludeOtherNamespacesPoliciesDefault = bool(false)
	)
	return &RetrieveAcceptedAgreements1Params{
		ExcludeOtherNamespacesPolicies: &excludeOtherNamespacesPoliciesDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewRetrieveAcceptedAgreements1ParamsWithTimeout creates a new RetrieveAcceptedAgreements1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewRetrieveAcceptedAgreements1ParamsWithTimeout(timeout time.Duration) *RetrieveAcceptedAgreements1Params {
	var (
		excludeOtherNamespacesPoliciesDefault = bool(false)
	)
	return &RetrieveAcceptedAgreements1Params{
		ExcludeOtherNamespacesPolicies: &excludeOtherNamespacesPoliciesDefault,

		timeout: timeout,
	}
}

// NewRetrieveAcceptedAgreements1ParamsWithContext creates a new RetrieveAcceptedAgreements1Params object
// with the default values initialized, and the ability to set a context for a request
func NewRetrieveAcceptedAgreements1ParamsWithContext(ctx context.Context) *RetrieveAcceptedAgreements1Params {
	var (
		excludeOtherNamespacesPoliciesDefault = bool(false)
	)
	return &RetrieveAcceptedAgreements1Params{
		ExcludeOtherNamespacesPolicies: &excludeOtherNamespacesPoliciesDefault,

		Context: ctx,
	}
}

// NewRetrieveAcceptedAgreements1ParamsWithHTTPClient creates a new RetrieveAcceptedAgreements1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRetrieveAcceptedAgreements1ParamsWithHTTPClient(client *http.Client) *RetrieveAcceptedAgreements1Params {
	var (
		excludeOtherNamespacesPoliciesDefault = bool(false)
	)
	return &RetrieveAcceptedAgreements1Params{
		ExcludeOtherNamespacesPolicies: &excludeOtherNamespacesPoliciesDefault,
		HTTPClient:                     client,
	}
}

/*RetrieveAcceptedAgreements1Params contains all the parameters to send to the API endpoint
for the retrieve accepted agreements 1 operation typically these are written to a http.Request
*/
type RetrieveAcceptedAgreements1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*UserID
	  User Id

	*/
	UserID string
	/*ExcludeOtherNamespacesPolicies
	  If it is true, API will only query the policy in this path namespace

	*/
	ExcludeOtherNamespacesPolicies *bool

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the retrieve accepted agreements 1 params
func (o *RetrieveAcceptedAgreements1Params) WithTimeout(timeout time.Duration) *RetrieveAcceptedAgreements1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the retrieve accepted agreements 1 params
func (o *RetrieveAcceptedAgreements1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the retrieve accepted agreements 1 params
func (o *RetrieveAcceptedAgreements1Params) WithContext(ctx context.Context) *RetrieveAcceptedAgreements1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the retrieve accepted agreements 1 params
func (o *RetrieveAcceptedAgreements1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the retrieve accepted agreements 1 params
func (o *RetrieveAcceptedAgreements1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the retrieve accepted agreements 1 params
func (o *RetrieveAcceptedAgreements1Params) WithHTTPClient(client *http.Client) *RetrieveAcceptedAgreements1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the retrieve accepted agreements 1 params
func (o *RetrieveAcceptedAgreements1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the retrieve accepted agreements 1 params
func (o *RetrieveAcceptedAgreements1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *RetrieveAcceptedAgreements1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the retrieve accepted agreements 1 params
func (o *RetrieveAcceptedAgreements1Params) WithNamespace(namespace string) *RetrieveAcceptedAgreements1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the retrieve accepted agreements 1 params
func (o *RetrieveAcceptedAgreements1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the retrieve accepted agreements 1 params
func (o *RetrieveAcceptedAgreements1Params) WithUserID(userID string) *RetrieveAcceptedAgreements1Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the retrieve accepted agreements 1 params
func (o *RetrieveAcceptedAgreements1Params) SetUserID(userID string) {
	o.UserID = userID
}

// WithExcludeOtherNamespacesPolicies adds the excludeOtherNamespacesPolicies to the retrieve accepted agreements 1 params
func (o *RetrieveAcceptedAgreements1Params) WithExcludeOtherNamespacesPolicies(excludeOtherNamespacesPolicies *bool) *RetrieveAcceptedAgreements1Params {
	o.SetExcludeOtherNamespacesPolicies(excludeOtherNamespacesPolicies)
	return o
}

// SetExcludeOtherNamespacesPolicies adds the excludeOtherNamespacesPolicies to the retrieve accepted agreements 1 params
func (o *RetrieveAcceptedAgreements1Params) SetExcludeOtherNamespacesPolicies(excludeOtherNamespacesPolicies *bool) {
	o.ExcludeOtherNamespacesPolicies = excludeOtherNamespacesPolicies
}

// WriteToRequest writes these params to a swagger request
func (o *RetrieveAcceptedAgreements1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
		return err
	}

	if o.ExcludeOtherNamespacesPolicies != nil {

		// query param excludeOtherNamespacesPolicies
		var qrExcludeOtherNamespacesPolicies bool
		if o.ExcludeOtherNamespacesPolicies != nil {
			qrExcludeOtherNamespacesPolicies = *o.ExcludeOtherNamespacesPolicies
		}
		qExcludeOtherNamespacesPolicies := swag.FormatBool(qrExcludeOtherNamespacesPolicies)
		if qExcludeOtherNamespacesPolicies != "" {
			if err := r.SetQueryParam("excludeOtherNamespacesPolicies", qExcludeOtherNamespacesPolicies); err != nil {
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
