// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package policies

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

// Deprecated: 2025-07-16 - Use RetrieveLatestPoliciesPublicPolicyType<EnumValue>Constant instead.
// Get the enum in RetrieveLatestPoliciesPublicParams
const (
	RetrieveLatestPoliciesPublicLEGALDOCUMENTTYPEConstant       = "LEGAL_DOCUMENT_TYPE"
	RetrieveLatestPoliciesPublicMARKETINGPREFERENCETYPEConstant = "MARKETING_PREFERENCE_TYPE"
)

// Get the enum in RetrieveLatestPoliciesPublicParams
const (
	RetrieveLatestPoliciesPublicPolicyTypeLEGALDOCUMENTTYPEConstant       = "LEGAL_DOCUMENT_TYPE"
	RetrieveLatestPoliciesPublicPolicyTypeMARKETINGPREFERENCETYPEConstant = "MARKETING_PREFERENCE_TYPE"
)

// NewRetrieveLatestPoliciesPublicParams creates a new RetrieveLatestPoliciesPublicParams object
// with the default values initialized.
func NewRetrieveLatestPoliciesPublicParams() *RetrieveLatestPoliciesPublicParams {
	var (
		visibleOnlyDefault = bool(false)
	)
	return &RetrieveLatestPoliciesPublicParams{
		VisibleOnly: &visibleOnlyDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewRetrieveLatestPoliciesPublicParamsWithTimeout creates a new RetrieveLatestPoliciesPublicParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRetrieveLatestPoliciesPublicParamsWithTimeout(timeout time.Duration) *RetrieveLatestPoliciesPublicParams {
	var (
		visibleOnlyDefault = bool(false)
	)
	return &RetrieveLatestPoliciesPublicParams{
		VisibleOnly: &visibleOnlyDefault,

		timeout: timeout,
	}
}

// NewRetrieveLatestPoliciesPublicParamsWithContext creates a new RetrieveLatestPoliciesPublicParams object
// with the default values initialized, and the ability to set a context for a request
func NewRetrieveLatestPoliciesPublicParamsWithContext(ctx context.Context) *RetrieveLatestPoliciesPublicParams {
	var (
		visibleOnlyDefault = bool(false)
	)
	return &RetrieveLatestPoliciesPublicParams{
		VisibleOnly: &visibleOnlyDefault,

		Context: ctx,
	}
}

// NewRetrieveLatestPoliciesPublicParamsWithHTTPClient creates a new RetrieveLatestPoliciesPublicParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRetrieveLatestPoliciesPublicParamsWithHTTPClient(client *http.Client) *RetrieveLatestPoliciesPublicParams {
	var (
		visibleOnlyDefault = bool(false)
	)
	return &RetrieveLatestPoliciesPublicParams{
		VisibleOnly: &visibleOnlyDefault,
		HTTPClient:  client,
	}
}

/*RetrieveLatestPoliciesPublicParams contains all the parameters to send to the API endpoint
for the retrieve latest policies public operation typically these are written to a http.Request
*/
type RetrieveLatestPoliciesPublicParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*AlwaysIncludeDefault
	  Always include default

	*/
	AlwaysIncludeDefault *bool
	/*DefaultOnEmpty
	  Default On Empty

	*/
	DefaultOnEmpty *bool
	/*PolicyType
	  Policy Type

	*/
	PolicyType *string
	/*Tags
	  tags, separate multiple value by commas parameter

	*/
	Tags *string
	/*VisibleOnly*/
	VisibleOnly *bool

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the retrieve latest policies public params
func (o *RetrieveLatestPoliciesPublicParams) WithTimeout(timeout time.Duration) *RetrieveLatestPoliciesPublicParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the retrieve latest policies public params
func (o *RetrieveLatestPoliciesPublicParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the retrieve latest policies public params
func (o *RetrieveLatestPoliciesPublicParams) WithContext(ctx context.Context) *RetrieveLatestPoliciesPublicParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the retrieve latest policies public params
func (o *RetrieveLatestPoliciesPublicParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the retrieve latest policies public params
func (o *RetrieveLatestPoliciesPublicParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the retrieve latest policies public params
func (o *RetrieveLatestPoliciesPublicParams) WithHTTPClient(client *http.Client) *RetrieveLatestPoliciesPublicParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the retrieve latest policies public params
func (o *RetrieveLatestPoliciesPublicParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the retrieve latest policies public params
func (o *RetrieveLatestPoliciesPublicParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *RetrieveLatestPoliciesPublicParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the retrieve latest policies public params
func (o *RetrieveLatestPoliciesPublicParams) WithNamespace(namespace string) *RetrieveLatestPoliciesPublicParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the retrieve latest policies public params
func (o *RetrieveLatestPoliciesPublicParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithAlwaysIncludeDefault adds the alwaysIncludeDefault to the retrieve latest policies public params
func (o *RetrieveLatestPoliciesPublicParams) WithAlwaysIncludeDefault(alwaysIncludeDefault *bool) *RetrieveLatestPoliciesPublicParams {
	o.SetAlwaysIncludeDefault(alwaysIncludeDefault)
	return o
}

// SetAlwaysIncludeDefault adds the alwaysIncludeDefault to the retrieve latest policies public params
func (o *RetrieveLatestPoliciesPublicParams) SetAlwaysIncludeDefault(alwaysIncludeDefault *bool) {
	o.AlwaysIncludeDefault = alwaysIncludeDefault
}

// WithDefaultOnEmpty adds the defaultOnEmpty to the retrieve latest policies public params
func (o *RetrieveLatestPoliciesPublicParams) WithDefaultOnEmpty(defaultOnEmpty *bool) *RetrieveLatestPoliciesPublicParams {
	o.SetDefaultOnEmpty(defaultOnEmpty)
	return o
}

// SetDefaultOnEmpty adds the defaultOnEmpty to the retrieve latest policies public params
func (o *RetrieveLatestPoliciesPublicParams) SetDefaultOnEmpty(defaultOnEmpty *bool) {
	o.DefaultOnEmpty = defaultOnEmpty
}

// WithPolicyType adds the policyType to the retrieve latest policies public params
func (o *RetrieveLatestPoliciesPublicParams) WithPolicyType(policyType *string) *RetrieveLatestPoliciesPublicParams {
	o.SetPolicyType(policyType)
	return o
}

// SetPolicyType adds the policyType to the retrieve latest policies public params
func (o *RetrieveLatestPoliciesPublicParams) SetPolicyType(policyType *string) {
	o.PolicyType = policyType
}

// WithTags adds the tags to the retrieve latest policies public params
func (o *RetrieveLatestPoliciesPublicParams) WithTags(tags *string) *RetrieveLatestPoliciesPublicParams {
	o.SetTags(tags)
	return o
}

// SetTags adds the tags to the retrieve latest policies public params
func (o *RetrieveLatestPoliciesPublicParams) SetTags(tags *string) {
	o.Tags = tags
}

// WithVisibleOnly adds the visibleOnly to the retrieve latest policies public params
func (o *RetrieveLatestPoliciesPublicParams) WithVisibleOnly(visibleOnly *bool) *RetrieveLatestPoliciesPublicParams {
	o.SetVisibleOnly(visibleOnly)
	return o
}

// SetVisibleOnly adds the visibleOnly to the retrieve latest policies public params
func (o *RetrieveLatestPoliciesPublicParams) SetVisibleOnly(visibleOnly *bool) {
	o.VisibleOnly = visibleOnly
}

// WriteToRequest writes these params to a swagger request
func (o *RetrieveLatestPoliciesPublicParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.AlwaysIncludeDefault != nil {

		// query param alwaysIncludeDefault
		var qrAlwaysIncludeDefault bool
		if o.AlwaysIncludeDefault != nil {
			qrAlwaysIncludeDefault = *o.AlwaysIncludeDefault
		}
		qAlwaysIncludeDefault := swag.FormatBool(qrAlwaysIncludeDefault)
		if qAlwaysIncludeDefault != "" {
			if err := r.SetQueryParam("alwaysIncludeDefault", qAlwaysIncludeDefault); err != nil {
				return err
			}
		}

	}

	if o.DefaultOnEmpty != nil {

		// query param defaultOnEmpty
		var qrDefaultOnEmpty bool
		if o.DefaultOnEmpty != nil {
			qrDefaultOnEmpty = *o.DefaultOnEmpty
		}
		qDefaultOnEmpty := swag.FormatBool(qrDefaultOnEmpty)
		if qDefaultOnEmpty != "" {
			if err := r.SetQueryParam("defaultOnEmpty", qDefaultOnEmpty); err != nil {
				return err
			}
		}

	}

	if o.PolicyType != nil {

		// query param policyType
		var qrPolicyType string
		if o.PolicyType != nil {
			qrPolicyType = *o.PolicyType
		}
		qPolicyType := qrPolicyType
		if qPolicyType != "" {
			if err := r.SetQueryParam("policyType", qPolicyType); err != nil {
				return err
			}
		}

	}

	if o.Tags != nil {

		// query param tags
		var qrTags string
		if o.Tags != nil {
			qrTags = *o.Tags
		}
		qTags := qrTags
		if qTags != "" {
			if err := r.SetQueryParam("tags", qTags); err != nil {
				return err
			}
		}

	}

	if o.VisibleOnly != nil {

		// query param visibleOnly
		var qrVisibleOnly bool
		if o.VisibleOnly != nil {
			qrVisibleOnly = *o.VisibleOnly
		}
		qVisibleOnly := swag.FormatBool(qrVisibleOnly)
		if qVisibleOnly != "" {
			if err := r.SetQueryParam("visibleOnly", qVisibleOnly); err != nil {
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
