// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package async_messaging

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

// NewListTopicsHandlerParams creates a new ListTopicsHandlerParams object
// with the default values initialized.
func NewListTopicsHandlerParams() *ListTopicsHandlerParams {
	var ()
	return &ListTopicsHandlerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewListTopicsHandlerParamsWithTimeout creates a new ListTopicsHandlerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewListTopicsHandlerParamsWithTimeout(timeout time.Duration) *ListTopicsHandlerParams {
	var ()
	return &ListTopicsHandlerParams{

		timeout: timeout,
	}
}

// NewListTopicsHandlerParamsWithContext creates a new ListTopicsHandlerParams object
// with the default values initialized, and the ability to set a context for a request
func NewListTopicsHandlerParamsWithContext(ctx context.Context) *ListTopicsHandlerParams {
	var ()
	return &ListTopicsHandlerParams{

		Context: ctx,
	}
}

// NewListTopicsHandlerParamsWithHTTPClient creates a new ListTopicsHandlerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewListTopicsHandlerParamsWithHTTPClient(client *http.Client) *ListTopicsHandlerParams {
	var ()
	return &ListTopicsHandlerParams{
		HTTPClient: client,
	}
}

/*ListTopicsHandlerParams contains all the parameters to send to the API endpoint
for the list topics handler operation typically these are written to a http.Request
*/
type ListTopicsHandlerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Game Name

	*/
	Namespace string
	/*FuzzyTopicName
	  Fuzzy search for topic name

	*/
	FuzzyTopicName *string
	/*IsSubscribedByAppName
	  Filter to get only topics subscribed by given app name

	*/
	IsSubscribedByAppName *string
	/*IsUnsubscribedByAppName
	  Filter to get only topics unsubscribed by given app name

	*/
	IsUnsubscribedByAppName *string
	/*Limit
	  Limit for pagination

	*/
	Limit *int64
	/*Offset
	  Offset for pagination

	*/
	Offset *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the list topics handler params
func (o *ListTopicsHandlerParams) WithTimeout(timeout time.Duration) *ListTopicsHandlerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the list topics handler params
func (o *ListTopicsHandlerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the list topics handler params
func (o *ListTopicsHandlerParams) WithContext(ctx context.Context) *ListTopicsHandlerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the list topics handler params
func (o *ListTopicsHandlerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the list topics handler params
func (o *ListTopicsHandlerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the list topics handler params
func (o *ListTopicsHandlerParams) WithHTTPClient(client *http.Client) *ListTopicsHandlerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the list topics handler params
func (o *ListTopicsHandlerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the list topics handler params
func (o *ListTopicsHandlerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ListTopicsHandlerParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the list topics handler params
func (o *ListTopicsHandlerParams) WithNamespace(namespace string) *ListTopicsHandlerParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the list topics handler params
func (o *ListTopicsHandlerParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithFuzzyTopicName adds the fuzzyTopicName to the list topics handler params
func (o *ListTopicsHandlerParams) WithFuzzyTopicName(fuzzyTopicName *string) *ListTopicsHandlerParams {
	o.SetFuzzyTopicName(fuzzyTopicName)
	return o
}

// SetFuzzyTopicName adds the fuzzyTopicName to the list topics handler params
func (o *ListTopicsHandlerParams) SetFuzzyTopicName(fuzzyTopicName *string) {
	o.FuzzyTopicName = fuzzyTopicName
}

// WithIsSubscribedByAppName adds the isSubscribedByAppName to the list topics handler params
func (o *ListTopicsHandlerParams) WithIsSubscribedByAppName(isSubscribedByAppName *string) *ListTopicsHandlerParams {
	o.SetIsSubscribedByAppName(isSubscribedByAppName)
	return o
}

// SetIsSubscribedByAppName adds the isSubscribedByAppName to the list topics handler params
func (o *ListTopicsHandlerParams) SetIsSubscribedByAppName(isSubscribedByAppName *string) {
	o.IsSubscribedByAppName = isSubscribedByAppName
}

// WithIsUnsubscribedByAppName adds the isUnsubscribedByAppName to the list topics handler params
func (o *ListTopicsHandlerParams) WithIsUnsubscribedByAppName(isUnsubscribedByAppName *string) *ListTopicsHandlerParams {
	o.SetIsUnsubscribedByAppName(isUnsubscribedByAppName)
	return o
}

// SetIsUnsubscribedByAppName adds the isUnsubscribedByAppName to the list topics handler params
func (o *ListTopicsHandlerParams) SetIsUnsubscribedByAppName(isUnsubscribedByAppName *string) {
	o.IsUnsubscribedByAppName = isUnsubscribedByAppName
}

// WithLimit adds the limit to the list topics handler params
func (o *ListTopicsHandlerParams) WithLimit(limit *int64) *ListTopicsHandlerParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the list topics handler params
func (o *ListTopicsHandlerParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the list topics handler params
func (o *ListTopicsHandlerParams) WithOffset(offset *int64) *ListTopicsHandlerParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the list topics handler params
func (o *ListTopicsHandlerParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *ListTopicsHandlerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.FuzzyTopicName != nil {

		// query param fuzzyTopicName
		var qrFuzzyTopicName string
		if o.FuzzyTopicName != nil {
			qrFuzzyTopicName = *o.FuzzyTopicName
		}
		qFuzzyTopicName := qrFuzzyTopicName
		if qFuzzyTopicName != "" {
			if err := r.SetQueryParam("fuzzyTopicName", qFuzzyTopicName); err != nil {
				return err
			}
		}

	}

	if o.IsSubscribedByAppName != nil {

		// query param isSubscribedByAppName
		var qrIsSubscribedByAppName string
		if o.IsSubscribedByAppName != nil {
			qrIsSubscribedByAppName = *o.IsSubscribedByAppName
		}
		qIsSubscribedByAppName := qrIsSubscribedByAppName
		if qIsSubscribedByAppName != "" {
			if err := r.SetQueryParam("isSubscribedByAppName", qIsSubscribedByAppName); err != nil {
				return err
			}
		}

	}

	if o.IsUnsubscribedByAppName != nil {

		// query param isUnsubscribedByAppName
		var qrIsUnsubscribedByAppName string
		if o.IsUnsubscribedByAppName != nil {
			qrIsUnsubscribedByAppName = *o.IsUnsubscribedByAppName
		}
		qIsUnsubscribedByAppName := qrIsUnsubscribedByAppName
		if qIsUnsubscribedByAppName != "" {
			if err := r.SetQueryParam("isUnsubscribedByAppName", qIsUnsubscribedByAppName); err != nil {
				return err
			}
		}

	}

	if o.Limit != nil {

		// query param limit
		var qrLimit int64
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt64(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	if o.Offset != nil {

		// query param offset
		var qrOffset int64
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt64(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
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
