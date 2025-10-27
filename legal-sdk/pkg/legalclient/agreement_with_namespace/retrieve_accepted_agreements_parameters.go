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

// NewRetrieveAcceptedAgreementsParams creates a new RetrieveAcceptedAgreementsParams object
// with the default values initialized.
func NewRetrieveAcceptedAgreementsParams() *RetrieveAcceptedAgreementsParams {
	var (
		excludeOtherNamespacesPoliciesDefault = bool(false)
	)
	return &RetrieveAcceptedAgreementsParams{
		ExcludeOtherNamespacesPolicies: &excludeOtherNamespacesPoliciesDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewRetrieveAcceptedAgreementsParamsWithTimeout creates a new RetrieveAcceptedAgreementsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRetrieveAcceptedAgreementsParamsWithTimeout(timeout time.Duration) *RetrieveAcceptedAgreementsParams {
	var (
		excludeOtherNamespacesPoliciesDefault = bool(false)
	)
	return &RetrieveAcceptedAgreementsParams{
		ExcludeOtherNamespacesPolicies: &excludeOtherNamespacesPoliciesDefault,

		timeout: timeout,
	}
}

// NewRetrieveAcceptedAgreementsParamsWithContext creates a new RetrieveAcceptedAgreementsParams object
// with the default values initialized, and the ability to set a context for a request
func NewRetrieveAcceptedAgreementsParamsWithContext(ctx context.Context) *RetrieveAcceptedAgreementsParams {
	var (
		excludeOtherNamespacesPoliciesDefault = bool(false)
	)
	return &RetrieveAcceptedAgreementsParams{
		ExcludeOtherNamespacesPolicies: &excludeOtherNamespacesPoliciesDefault,

		Context: ctx,
	}
}

// NewRetrieveAcceptedAgreementsParamsWithHTTPClient creates a new RetrieveAcceptedAgreementsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRetrieveAcceptedAgreementsParamsWithHTTPClient(client *http.Client) *RetrieveAcceptedAgreementsParams {
	var (
		excludeOtherNamespacesPoliciesDefault = bool(false)
	)
	return &RetrieveAcceptedAgreementsParams{
		ExcludeOtherNamespacesPolicies: &excludeOtherNamespacesPoliciesDefault,
		HTTPClient:                     client,
	}
}

/*RetrieveAcceptedAgreementsParams contains all the parameters to send to the API endpoint
for the retrieve accepted agreements operation typically these are written to a http.Request
*/
type RetrieveAcceptedAgreementsParams struct {

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

// WithTimeout adds the timeout to the retrieve accepted agreements params
func (o *RetrieveAcceptedAgreementsParams) WithTimeout(timeout time.Duration) *RetrieveAcceptedAgreementsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the retrieve accepted agreements params
func (o *RetrieveAcceptedAgreementsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the retrieve accepted agreements params
func (o *RetrieveAcceptedAgreementsParams) WithContext(ctx context.Context) *RetrieveAcceptedAgreementsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the retrieve accepted agreements params
func (o *RetrieveAcceptedAgreementsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the retrieve accepted agreements params
func (o *RetrieveAcceptedAgreementsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the retrieve accepted agreements params
func (o *RetrieveAcceptedAgreementsParams) WithHTTPClient(client *http.Client) *RetrieveAcceptedAgreementsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the retrieve accepted agreements params
func (o *RetrieveAcceptedAgreementsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the retrieve accepted agreements params
func (o *RetrieveAcceptedAgreementsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *RetrieveAcceptedAgreementsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the retrieve accepted agreements params
func (o *RetrieveAcceptedAgreementsParams) WithNamespace(namespace string) *RetrieveAcceptedAgreementsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the retrieve accepted agreements params
func (o *RetrieveAcceptedAgreementsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the retrieve accepted agreements params
func (o *RetrieveAcceptedAgreementsParams) WithUserID(userID string) *RetrieveAcceptedAgreementsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the retrieve accepted agreements params
func (o *RetrieveAcceptedAgreementsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithExcludeOtherNamespacesPolicies adds the excludeOtherNamespacesPolicies to the retrieve accepted agreements params
func (o *RetrieveAcceptedAgreementsParams) WithExcludeOtherNamespacesPolicies(excludeOtherNamespacesPolicies *bool) *RetrieveAcceptedAgreementsParams {
	o.SetExcludeOtherNamespacesPolicies(excludeOtherNamespacesPolicies)
	return o
}

// SetExcludeOtherNamespacesPolicies adds the excludeOtherNamespacesPolicies to the retrieve accepted agreements params
func (o *RetrieveAcceptedAgreementsParams) SetExcludeOtherNamespacesPolicies(excludeOtherNamespacesPolicies *bool) {
	o.ExcludeOtherNamespacesPolicies = excludeOtherNamespacesPolicies
}

// WriteToRequest writes these params to a swagger request
func (o *RetrieveAcceptedAgreementsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
