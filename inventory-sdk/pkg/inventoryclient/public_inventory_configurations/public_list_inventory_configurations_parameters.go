// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_inventory_configurations

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

// Get the enum in PublicListInventoryConfigurationsParams
const (
	PublicListInventoryConfigurationsCodeConstant          = "code"
	PublicListInventoryConfigurationsCodeAscConstant       = "code:asc"
	PublicListInventoryConfigurationsCodeDescConstant      = "code:desc"
	PublicListInventoryConfigurationsCreatedAtConstant     = "createdAt"
	PublicListInventoryConfigurationsCreatedAtAscConstant  = "createdAt:asc"
	PublicListInventoryConfigurationsCreatedAtDescConstant = "createdAt:desc"
	PublicListInventoryConfigurationsUpdatedAtConstant     = "updatedAt"
	PublicListInventoryConfigurationsUpdatedAtAscConstant  = "updatedAt:asc"
	PublicListInventoryConfigurationsUpdatedAtDescConstant = "updatedAt:desc"
)

// NewPublicListInventoryConfigurationsParams creates a new PublicListInventoryConfigurationsParams object
// with the default values initialized.
func NewPublicListInventoryConfigurationsParams() *PublicListInventoryConfigurationsParams {
	var (
		limitDefault  = int64(25)
		sortByDefault = string("createdAt")
	)
	return &PublicListInventoryConfigurationsParams{
		Limit:  &limitDefault,
		SortBy: &sortByDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicListInventoryConfigurationsParamsWithTimeout creates a new PublicListInventoryConfigurationsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicListInventoryConfigurationsParamsWithTimeout(timeout time.Duration) *PublicListInventoryConfigurationsParams {
	var (
		limitDefault  = int64(25)
		sortByDefault = string("createdAt")
	)
	return &PublicListInventoryConfigurationsParams{
		Limit:  &limitDefault,
		SortBy: &sortByDefault,

		timeout: timeout,
	}
}

// NewPublicListInventoryConfigurationsParamsWithContext creates a new PublicListInventoryConfigurationsParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicListInventoryConfigurationsParamsWithContext(ctx context.Context) *PublicListInventoryConfigurationsParams {
	var (
		limitDefault  = int64(25)
		sortByDefault = string("createdAt")
	)
	return &PublicListInventoryConfigurationsParams{
		Limit:  &limitDefault,
		SortBy: &sortByDefault,

		Context: ctx,
	}
}

// NewPublicListInventoryConfigurationsParamsWithHTTPClient creates a new PublicListInventoryConfigurationsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicListInventoryConfigurationsParamsWithHTTPClient(client *http.Client) *PublicListInventoryConfigurationsParams {
	var (
		limitDefault  = int64(25)
		sortByDefault = string("createdAt")
	)
	return &PublicListInventoryConfigurationsParams{
		Limit:      &limitDefault,
		SortBy:     &sortByDefault,
		HTTPClient: client,
	}
}

/*PublicListInventoryConfigurationsParams contains all the parameters to send to the API endpoint
for the public list inventory configurations operation typically these are written to a http.Request
*/
type PublicListInventoryConfigurationsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*Code
	  will partially match inventoryConfigurationCode

	*/
	Code *string
	/*Limit
	  default 25

	*/
	Limit *int64
	/*Offset*/
	Offset *int64
	/*SortBy
	  Only support one level of sortBy; default createdAt

	*/
	SortBy *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public list inventory configurations params
func (o *PublicListInventoryConfigurationsParams) WithTimeout(timeout time.Duration) *PublicListInventoryConfigurationsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public list inventory configurations params
func (o *PublicListInventoryConfigurationsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public list inventory configurations params
func (o *PublicListInventoryConfigurationsParams) WithContext(ctx context.Context) *PublicListInventoryConfigurationsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public list inventory configurations params
func (o *PublicListInventoryConfigurationsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public list inventory configurations params
func (o *PublicListInventoryConfigurationsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public list inventory configurations params
func (o *PublicListInventoryConfigurationsParams) WithHTTPClient(client *http.Client) *PublicListInventoryConfigurationsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public list inventory configurations params
func (o *PublicListInventoryConfigurationsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public list inventory configurations params
func (o *PublicListInventoryConfigurationsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the public list inventory configurations params
func (o *PublicListInventoryConfigurationsParams) WithNamespace(namespace string) *PublicListInventoryConfigurationsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public list inventory configurations params
func (o *PublicListInventoryConfigurationsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithCode adds the code to the public list inventory configurations params
func (o *PublicListInventoryConfigurationsParams) WithCode(code *string) *PublicListInventoryConfigurationsParams {
	o.SetCode(code)
	return o
}

// SetCode adds the code to the public list inventory configurations params
func (o *PublicListInventoryConfigurationsParams) SetCode(code *string) {
	o.Code = code
}

// WithLimit adds the limit to the public list inventory configurations params
func (o *PublicListInventoryConfigurationsParams) WithLimit(limit *int64) *PublicListInventoryConfigurationsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the public list inventory configurations params
func (o *PublicListInventoryConfigurationsParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the public list inventory configurations params
func (o *PublicListInventoryConfigurationsParams) WithOffset(offset *int64) *PublicListInventoryConfigurationsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the public list inventory configurations params
func (o *PublicListInventoryConfigurationsParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithSortBy adds the sortBy to the public list inventory configurations params
func (o *PublicListInventoryConfigurationsParams) WithSortBy(sortBy *string) *PublicListInventoryConfigurationsParams {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the public list inventory configurations params
func (o *PublicListInventoryConfigurationsParams) SetSortBy(sortBy *string) {
	o.SortBy = sortBy
}

// WriteToRequest writes these params to a swagger request
func (o *PublicListInventoryConfigurationsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Code != nil {

		// query param code
		var qrCode string
		if o.Code != nil {
			qrCode = *o.Code
		}
		qCode := qrCode
		if qCode != "" {
			if err := r.SetQueryParam("code", qCode); err != nil {
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

	if o.SortBy != nil {

		// query param sortBy
		var qrSortBy string
		if o.SortBy != nil {
			qrSortBy = *o.SortBy
		}
		qSortBy := qrSortBy
		if qSortBy != "" {
			if err := r.SetQueryParam("sortBy", qSortBy); err != nil {
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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
