// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_statistic

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

// NewPublicListAllMyStatItemsParams creates a new PublicListAllMyStatItemsParams object
// with the default values initialized.
func NewPublicListAllMyStatItemsParams() *PublicListAllMyStatItemsParams {
	var ()
	return &PublicListAllMyStatItemsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicListAllMyStatItemsParamsWithTimeout creates a new PublicListAllMyStatItemsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicListAllMyStatItemsParamsWithTimeout(timeout time.Duration) *PublicListAllMyStatItemsParams {
	var ()
	return &PublicListAllMyStatItemsParams{

		timeout: timeout,
	}
}

// NewPublicListAllMyStatItemsParamsWithContext creates a new PublicListAllMyStatItemsParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicListAllMyStatItemsParamsWithContext(ctx context.Context) *PublicListAllMyStatItemsParams {
	var ()
	return &PublicListAllMyStatItemsParams{

		Context: ctx,
	}
}

// NewPublicListAllMyStatItemsParamsWithHTTPClient creates a new PublicListAllMyStatItemsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicListAllMyStatItemsParamsWithHTTPClient(client *http.Client) *PublicListAllMyStatItemsParams {
	var ()
	return &PublicListAllMyStatItemsParams{
		HTTPClient: client,
	}
}

/*PublicListAllMyStatItemsParams contains all the parameters to send to the API endpoint
for the public list all my stat items operation typically these are written to a http.Request
*/
type PublicListAllMyStatItemsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*AdditionalKey
	  additional key

	*/
	AdditionalKey *string
	/*StatCodes
	  stat codes

	*/
	StatCodes []string
	/*Tags
	  tags

	*/
	Tags []string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public list all my stat items params
func (o *PublicListAllMyStatItemsParams) WithTimeout(timeout time.Duration) *PublicListAllMyStatItemsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public list all my stat items params
func (o *PublicListAllMyStatItemsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public list all my stat items params
func (o *PublicListAllMyStatItemsParams) WithContext(ctx context.Context) *PublicListAllMyStatItemsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public list all my stat items params
func (o *PublicListAllMyStatItemsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public list all my stat items params
func (o *PublicListAllMyStatItemsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public list all my stat items params
func (o *PublicListAllMyStatItemsParams) WithHTTPClient(client *http.Client) *PublicListAllMyStatItemsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public list all my stat items params
func (o *PublicListAllMyStatItemsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public list all my stat items params
func (o *PublicListAllMyStatItemsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicListAllMyStatItemsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public list all my stat items params
func (o *PublicListAllMyStatItemsParams) WithNamespace(namespace string) *PublicListAllMyStatItemsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public list all my stat items params
func (o *PublicListAllMyStatItemsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithAdditionalKey adds the additionalKey to the public list all my stat items params
func (o *PublicListAllMyStatItemsParams) WithAdditionalKey(additionalKey *string) *PublicListAllMyStatItemsParams {
	o.SetAdditionalKey(additionalKey)
	return o
}

// SetAdditionalKey adds the additionalKey to the public list all my stat items params
func (o *PublicListAllMyStatItemsParams) SetAdditionalKey(additionalKey *string) {
	o.AdditionalKey = additionalKey
}

// WithStatCodes adds the statCodes to the public list all my stat items params
func (o *PublicListAllMyStatItemsParams) WithStatCodes(statCodes []string) *PublicListAllMyStatItemsParams {
	o.SetStatCodes(statCodes)
	return o
}

// SetStatCodes adds the statCodes to the public list all my stat items params
func (o *PublicListAllMyStatItemsParams) SetStatCodes(statCodes []string) {
	o.StatCodes = statCodes
}

// WithTags adds the tags to the public list all my stat items params
func (o *PublicListAllMyStatItemsParams) WithTags(tags []string) *PublicListAllMyStatItemsParams {
	o.SetTags(tags)
	return o
}

// SetTags adds the tags to the public list all my stat items params
func (o *PublicListAllMyStatItemsParams) SetTags(tags []string) {
	o.Tags = tags
}

// WriteToRequest writes these params to a swagger request
func (o *PublicListAllMyStatItemsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.AdditionalKey != nil {

		// query param additionalKey
		var qrAdditionalKey string
		if o.AdditionalKey != nil {
			qrAdditionalKey = *o.AdditionalKey
		}
		qAdditionalKey := qrAdditionalKey
		if qAdditionalKey != "" {
			if err := r.SetQueryParam("additionalKey", qAdditionalKey); err != nil {
				return err
			}
		}

	}

	valuesStatCodes := o.StatCodes

	joinedStatCodes := swag.JoinByFormat(valuesStatCodes, "multi")
	// query array param statCodes
	if err := r.SetQueryParam("statCodes", joinedStatCodes...); err != nil {
		return err
	}

	valuesTags := o.Tags

	joinedTags := swag.JoinByFormat(valuesTags, "multi")
	// query array param tags
	if err := r.SetQueryParam("tags", joinedTags...); err != nil {
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
