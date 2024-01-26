// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package item

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

// NewListBasicItemsByFeaturesParams creates a new ListBasicItemsByFeaturesParams object
// with the default values initialized.
func NewListBasicItemsByFeaturesParams() *ListBasicItemsByFeaturesParams {
	var (
		activeOnlyDefault = bool(true)
	)
	return &ListBasicItemsByFeaturesParams{
		ActiveOnly: &activeOnlyDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewListBasicItemsByFeaturesParamsWithTimeout creates a new ListBasicItemsByFeaturesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewListBasicItemsByFeaturesParamsWithTimeout(timeout time.Duration) *ListBasicItemsByFeaturesParams {
	var (
		activeOnlyDefault = bool(true)
	)
	return &ListBasicItemsByFeaturesParams{
		ActiveOnly: &activeOnlyDefault,

		timeout: timeout,
	}
}

// NewListBasicItemsByFeaturesParamsWithContext creates a new ListBasicItemsByFeaturesParams object
// with the default values initialized, and the ability to set a context for a request
func NewListBasicItemsByFeaturesParamsWithContext(ctx context.Context) *ListBasicItemsByFeaturesParams {
	var (
		activeOnlyDefault = bool(true)
	)
	return &ListBasicItemsByFeaturesParams{
		ActiveOnly: &activeOnlyDefault,

		Context: ctx,
	}
}

// NewListBasicItemsByFeaturesParamsWithHTTPClient creates a new ListBasicItemsByFeaturesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewListBasicItemsByFeaturesParamsWithHTTPClient(client *http.Client) *ListBasicItemsByFeaturesParams {
	var (
		activeOnlyDefault = bool(true)
	)
	return &ListBasicItemsByFeaturesParams{
		ActiveOnly: &activeOnlyDefault,
		HTTPClient: client,
	}
}

/*ListBasicItemsByFeaturesParams contains all the parameters to send to the API endpoint
for the list basic items by features operation typically these are written to a http.Request
*/
type ListBasicItemsByFeaturesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*ActiveOnly*/
	ActiveOnly *bool
	/*Features
	  features

	*/
	Features []string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the list basic items by features params
func (o *ListBasicItemsByFeaturesParams) WithTimeout(timeout time.Duration) *ListBasicItemsByFeaturesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the list basic items by features params
func (o *ListBasicItemsByFeaturesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the list basic items by features params
func (o *ListBasicItemsByFeaturesParams) WithContext(ctx context.Context) *ListBasicItemsByFeaturesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the list basic items by features params
func (o *ListBasicItemsByFeaturesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the list basic items by features params
func (o *ListBasicItemsByFeaturesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the list basic items by features params
func (o *ListBasicItemsByFeaturesParams) WithHTTPClient(client *http.Client) *ListBasicItemsByFeaturesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the list basic items by features params
func (o *ListBasicItemsByFeaturesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the list basic items by features params
func (o *ListBasicItemsByFeaturesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ListBasicItemsByFeaturesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the list basic items by features params
func (o *ListBasicItemsByFeaturesParams) WithNamespace(namespace string) *ListBasicItemsByFeaturesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the list basic items by features params
func (o *ListBasicItemsByFeaturesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithActiveOnly adds the activeOnly to the list basic items by features params
func (o *ListBasicItemsByFeaturesParams) WithActiveOnly(activeOnly *bool) *ListBasicItemsByFeaturesParams {
	o.SetActiveOnly(activeOnly)
	return o
}

// SetActiveOnly adds the activeOnly to the list basic items by features params
func (o *ListBasicItemsByFeaturesParams) SetActiveOnly(activeOnly *bool) {
	o.ActiveOnly = activeOnly
}

// WithFeatures adds the features to the list basic items by features params
func (o *ListBasicItemsByFeaturesParams) WithFeatures(features []string) *ListBasicItemsByFeaturesParams {
	o.SetFeatures(features)
	return o
}

// SetFeatures adds the features to the list basic items by features params
func (o *ListBasicItemsByFeaturesParams) SetFeatures(features []string) {
	o.Features = features
}

// WriteToRequest writes these params to a swagger request
func (o *ListBasicItemsByFeaturesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.ActiveOnly != nil {

		// query param activeOnly
		var qrActiveOnly bool
		if o.ActiveOnly != nil {
			qrActiveOnly = *o.ActiveOnly
		}
		qActiveOnly := swag.FormatBool(qrActiveOnly)
		if qActiveOnly != "" {
			if err := r.SetQueryParam("activeOnly", qActiveOnly); err != nil {
				return err
			}
		}

	}

	valuesFeatures := o.Features

	joinedFeatures := swag.JoinByFormat(valuesFeatures, "multi")
	// query array param features
	if err := r.SetQueryParam("features", joinedFeatures...); err != nil {
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
