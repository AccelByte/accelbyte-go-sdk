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

// Get the enum in RetrieveLatestPoliciesByNamespaceAndCountryPublicParams
const (
	RetrieveLatestPoliciesByNamespaceAndCountryPublicLEGALDOCUMENTTYPEConstant       = "LEGAL_DOCUMENT_TYPE"
	RetrieveLatestPoliciesByNamespaceAndCountryPublicMARKETINGPREFERENCETYPEConstant = "MARKETING_PREFERENCE_TYPE"
)

// NewRetrieveLatestPoliciesByNamespaceAndCountryPublicParams creates a new RetrieveLatestPoliciesByNamespaceAndCountryPublicParams object
// with the default values initialized.
func NewRetrieveLatestPoliciesByNamespaceAndCountryPublicParams() *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams {
	var (
		visibleOnlyDefault = bool(false)
	)
	return &RetrieveLatestPoliciesByNamespaceAndCountryPublicParams{
		VisibleOnly: &visibleOnlyDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewRetrieveLatestPoliciesByNamespaceAndCountryPublicParamsWithTimeout creates a new RetrieveLatestPoliciesByNamespaceAndCountryPublicParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRetrieveLatestPoliciesByNamespaceAndCountryPublicParamsWithTimeout(timeout time.Duration) *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams {
	var (
		visibleOnlyDefault = bool(false)
	)
	return &RetrieveLatestPoliciesByNamespaceAndCountryPublicParams{
		VisibleOnly: &visibleOnlyDefault,

		timeout: timeout,
	}
}

// NewRetrieveLatestPoliciesByNamespaceAndCountryPublicParamsWithContext creates a new RetrieveLatestPoliciesByNamespaceAndCountryPublicParams object
// with the default values initialized, and the ability to set a context for a request
func NewRetrieveLatestPoliciesByNamespaceAndCountryPublicParamsWithContext(ctx context.Context) *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams {
	var (
		visibleOnlyDefault = bool(false)
	)
	return &RetrieveLatestPoliciesByNamespaceAndCountryPublicParams{
		VisibleOnly: &visibleOnlyDefault,

		Context: ctx,
	}
}

// NewRetrieveLatestPoliciesByNamespaceAndCountryPublicParamsWithHTTPClient creates a new RetrieveLatestPoliciesByNamespaceAndCountryPublicParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRetrieveLatestPoliciesByNamespaceAndCountryPublicParamsWithHTTPClient(client *http.Client) *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams {
	var (
		visibleOnlyDefault = bool(false)
	)
	return &RetrieveLatestPoliciesByNamespaceAndCountryPublicParams{
		VisibleOnly: &visibleOnlyDefault,
		HTTPClient:  client,
	}
}

/*RetrieveLatestPoliciesByNamespaceAndCountryPublicParams contains all the parameters to send to the API endpoint
for the retrieve latest policies by namespace and country public operation typically these are written to a http.Request
*/
type RetrieveLatestPoliciesByNamespaceAndCountryPublicParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*CountryCode
	  Country Code

	*/
	CountryCode string
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

// WithTimeout adds the timeout to the retrieve latest policies by namespace and country public params
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams) WithTimeout(timeout time.Duration) *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the retrieve latest policies by namespace and country public params
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the retrieve latest policies by namespace and country public params
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams) WithContext(ctx context.Context) *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the retrieve latest policies by namespace and country public params
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the retrieve latest policies by namespace and country public params
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the retrieve latest policies by namespace and country public params
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams) WithHTTPClient(client *http.Client) *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the retrieve latest policies by namespace and country public params
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the retrieve latest policies by namespace and country public params
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithCountryCode adds the countryCode to the retrieve latest policies by namespace and country public params
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams) WithCountryCode(countryCode string) *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams {
	o.SetCountryCode(countryCode)
	return o
}

// SetCountryCode adds the countryCode to the retrieve latest policies by namespace and country public params
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams) SetCountryCode(countryCode string) {
	o.CountryCode = countryCode
}

// WithNamespace adds the namespace to the retrieve latest policies by namespace and country public params
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams) WithNamespace(namespace string) *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the retrieve latest policies by namespace and country public params
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithAlwaysIncludeDefault adds the alwaysIncludeDefault to the retrieve latest policies by namespace and country public params
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams) WithAlwaysIncludeDefault(alwaysIncludeDefault *bool) *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams {
	o.SetAlwaysIncludeDefault(alwaysIncludeDefault)
	return o
}

// SetAlwaysIncludeDefault adds the alwaysIncludeDefault to the retrieve latest policies by namespace and country public params
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams) SetAlwaysIncludeDefault(alwaysIncludeDefault *bool) {
	o.AlwaysIncludeDefault = alwaysIncludeDefault
}

// WithDefaultOnEmpty adds the defaultOnEmpty to the retrieve latest policies by namespace and country public params
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams) WithDefaultOnEmpty(defaultOnEmpty *bool) *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams {
	o.SetDefaultOnEmpty(defaultOnEmpty)
	return o
}

// SetDefaultOnEmpty adds the defaultOnEmpty to the retrieve latest policies by namespace and country public params
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams) SetDefaultOnEmpty(defaultOnEmpty *bool) {
	o.DefaultOnEmpty = defaultOnEmpty
}

// WithPolicyType adds the policyType to the retrieve latest policies by namespace and country public params
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams) WithPolicyType(policyType *string) *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams {
	o.SetPolicyType(policyType)
	return o
}

// SetPolicyType adds the policyType to the retrieve latest policies by namespace and country public params
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams) SetPolicyType(policyType *string) {
	o.PolicyType = policyType
}

// WithTags adds the tags to the retrieve latest policies by namespace and country public params
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams) WithTags(tags *string) *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams {
	o.SetTags(tags)
	return o
}

// SetTags adds the tags to the retrieve latest policies by namespace and country public params
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams) SetTags(tags *string) {
	o.Tags = tags
}

// WithVisibleOnly adds the visibleOnly to the retrieve latest policies by namespace and country public params
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams) WithVisibleOnly(visibleOnly *bool) *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams {
	o.SetVisibleOnly(visibleOnly)
	return o
}

// SetVisibleOnly adds the visibleOnly to the retrieve latest policies by namespace and country public params
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams) SetVisibleOnly(visibleOnly *bool) {
	o.VisibleOnly = visibleOnly
}

// WriteToRequest writes these params to a swagger request
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param countryCode
	if err := r.SetPathParam("countryCode", o.CountryCode); err != nil {
		return err
	}

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
