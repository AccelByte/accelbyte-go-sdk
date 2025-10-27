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

// Deprecated: 2025-07-16 - Use OldRetrieveLatestPoliciesByNamespaceAndCountryPublicPolicyType<EnumValue>Constant instead.
// Get the enum in OldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams
const (
	OldRetrieveLatestPoliciesByNamespaceAndCountryPublicLEGALDOCUMENTTYPEConstant       = "LEGAL_DOCUMENT_TYPE"
	OldRetrieveLatestPoliciesByNamespaceAndCountryPublicMARKETINGPREFERENCETYPEConstant = "MARKETING_PREFERENCE_TYPE"
)

// Get the enum in OldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams
const (
	OldRetrieveLatestPoliciesByNamespaceAndCountryPublicPolicyTypeLEGALDOCUMENTTYPEConstant       = "LEGAL_DOCUMENT_TYPE"
	OldRetrieveLatestPoliciesByNamespaceAndCountryPublicPolicyTypeMARKETINGPREFERENCETYPEConstant = "MARKETING_PREFERENCE_TYPE"
)

// NewOldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams creates a new OldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams object
// with the default values initialized.
func NewOldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams() *OldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams {
	var (
		visibleOnlyDefault = bool(false)
	)
	return &OldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams{
		VisibleOnly: &visibleOnlyDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewOldRetrieveLatestPoliciesByNamespaceAndCountryPublicParamsWithTimeout creates a new OldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewOldRetrieveLatestPoliciesByNamespaceAndCountryPublicParamsWithTimeout(timeout time.Duration) *OldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams {
	var (
		visibleOnlyDefault = bool(false)
	)
	return &OldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams{
		VisibleOnly: &visibleOnlyDefault,

		timeout: timeout,
	}
}

// NewOldRetrieveLatestPoliciesByNamespaceAndCountryPublicParamsWithContext creates a new OldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams object
// with the default values initialized, and the ability to set a context for a request
func NewOldRetrieveLatestPoliciesByNamespaceAndCountryPublicParamsWithContext(ctx context.Context) *OldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams {
	var (
		visibleOnlyDefault = bool(false)
	)
	return &OldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams{
		VisibleOnly: &visibleOnlyDefault,

		Context: ctx,
	}
}

// NewOldRetrieveLatestPoliciesByNamespaceAndCountryPublicParamsWithHTTPClient creates a new OldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewOldRetrieveLatestPoliciesByNamespaceAndCountryPublicParamsWithHTTPClient(client *http.Client) *OldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams {
	var (
		visibleOnlyDefault = bool(false)
	)
	return &OldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams{
		VisibleOnly: &visibleOnlyDefault,
		HTTPClient:  client,
	}
}

/*OldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams contains all the parameters to send to the API endpoint
for the old retrieve latest policies by namespace and country public operation typically these are written to a http.Request
*/
type OldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams struct {

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

// WithTimeout adds the timeout to the old retrieve latest policies by namespace and country public params
func (o *OldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams) WithTimeout(timeout time.Duration) *OldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the old retrieve latest policies by namespace and country public params
func (o *OldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the old retrieve latest policies by namespace and country public params
func (o *OldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams) WithContext(ctx context.Context) *OldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the old retrieve latest policies by namespace and country public params
func (o *OldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the old retrieve latest policies by namespace and country public params
func (o *OldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the old retrieve latest policies by namespace and country public params
func (o *OldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams) WithHTTPClient(client *http.Client) *OldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the old retrieve latest policies by namespace and country public params
func (o *OldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the old retrieve latest policies by namespace and country public params
func (o *OldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *OldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithCountryCode adds the countryCode to the old retrieve latest policies by namespace and country public params
func (o *OldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams) WithCountryCode(countryCode string) *OldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams {
	o.SetCountryCode(countryCode)
	return o
}

// SetCountryCode adds the countryCode to the old retrieve latest policies by namespace and country public params
func (o *OldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams) SetCountryCode(countryCode string) {
	o.CountryCode = countryCode
}

// WithNamespace adds the namespace to the old retrieve latest policies by namespace and country public params
func (o *OldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams) WithNamespace(namespace string) *OldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the old retrieve latest policies by namespace and country public params
func (o *OldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithAlwaysIncludeDefault adds the alwaysIncludeDefault to the old retrieve latest policies by namespace and country public params
func (o *OldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams) WithAlwaysIncludeDefault(alwaysIncludeDefault *bool) *OldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams {
	o.SetAlwaysIncludeDefault(alwaysIncludeDefault)
	return o
}

// SetAlwaysIncludeDefault adds the alwaysIncludeDefault to the old retrieve latest policies by namespace and country public params
func (o *OldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams) SetAlwaysIncludeDefault(alwaysIncludeDefault *bool) {
	o.AlwaysIncludeDefault = alwaysIncludeDefault
}

// WithDefaultOnEmpty adds the defaultOnEmpty to the old retrieve latest policies by namespace and country public params
func (o *OldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams) WithDefaultOnEmpty(defaultOnEmpty *bool) *OldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams {
	o.SetDefaultOnEmpty(defaultOnEmpty)
	return o
}

// SetDefaultOnEmpty adds the defaultOnEmpty to the old retrieve latest policies by namespace and country public params
func (o *OldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams) SetDefaultOnEmpty(defaultOnEmpty *bool) {
	o.DefaultOnEmpty = defaultOnEmpty
}

// WithPolicyType adds the policyType to the old retrieve latest policies by namespace and country public params
func (o *OldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams) WithPolicyType(policyType *string) *OldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams {
	o.SetPolicyType(policyType)
	return o
}

// SetPolicyType adds the policyType to the old retrieve latest policies by namespace and country public params
func (o *OldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams) SetPolicyType(policyType *string) {
	o.PolicyType = policyType
}

// WithTags adds the tags to the old retrieve latest policies by namespace and country public params
func (o *OldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams) WithTags(tags *string) *OldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams {
	o.SetTags(tags)
	return o
}

// SetTags adds the tags to the old retrieve latest policies by namespace and country public params
func (o *OldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams) SetTags(tags *string) {
	o.Tags = tags
}

// WithVisibleOnly adds the visibleOnly to the old retrieve latest policies by namespace and country public params
func (o *OldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams) WithVisibleOnly(visibleOnly *bool) *OldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams {
	o.SetVisibleOnly(visibleOnly)
	return o
}

// SetVisibleOnly adds the visibleOnly to the old retrieve latest policies by namespace and country public params
func (o *OldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams) SetVisibleOnly(visibleOnly *bool) {
	o.VisibleOnly = visibleOnly
}

// WriteToRequest writes these params to a swagger request
func (o *OldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
