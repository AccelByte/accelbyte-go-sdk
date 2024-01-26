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
)

// NewBulkFetchStatItemsParams creates a new BulkFetchStatItemsParams object
// with the default values initialized.
func NewBulkFetchStatItemsParams() *BulkFetchStatItemsParams {
	var ()
	return &BulkFetchStatItemsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewBulkFetchStatItemsParamsWithTimeout creates a new BulkFetchStatItemsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewBulkFetchStatItemsParamsWithTimeout(timeout time.Duration) *BulkFetchStatItemsParams {
	var ()
	return &BulkFetchStatItemsParams{

		timeout: timeout,
	}
}

// NewBulkFetchStatItemsParamsWithContext creates a new BulkFetchStatItemsParams object
// with the default values initialized, and the ability to set a context for a request
func NewBulkFetchStatItemsParamsWithContext(ctx context.Context) *BulkFetchStatItemsParams {
	var ()
	return &BulkFetchStatItemsParams{

		Context: ctx,
	}
}

// NewBulkFetchStatItemsParamsWithHTTPClient creates a new BulkFetchStatItemsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewBulkFetchStatItemsParamsWithHTTPClient(client *http.Client) *BulkFetchStatItemsParams {
	var ()
	return &BulkFetchStatItemsParams{
		HTTPClient: client,
	}
}

/*BulkFetchStatItemsParams contains all the parameters to send to the API endpoint
for the bulk fetch stat items operation typically these are written to a http.Request
*/
type BulkFetchStatItemsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*StatCode
	  stat code

	*/
	StatCode string
	/*UserIds
	  comma separated user Ids

	*/
	UserIds string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the bulk fetch stat items params
func (o *BulkFetchStatItemsParams) WithTimeout(timeout time.Duration) *BulkFetchStatItemsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the bulk fetch stat items params
func (o *BulkFetchStatItemsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the bulk fetch stat items params
func (o *BulkFetchStatItemsParams) WithContext(ctx context.Context) *BulkFetchStatItemsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the bulk fetch stat items params
func (o *BulkFetchStatItemsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the bulk fetch stat items params
func (o *BulkFetchStatItemsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the bulk fetch stat items params
func (o *BulkFetchStatItemsParams) WithHTTPClient(client *http.Client) *BulkFetchStatItemsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the bulk fetch stat items params
func (o *BulkFetchStatItemsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the bulk fetch stat items params
func (o *BulkFetchStatItemsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *BulkFetchStatItemsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the bulk fetch stat items params
func (o *BulkFetchStatItemsParams) WithNamespace(namespace string) *BulkFetchStatItemsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the bulk fetch stat items params
func (o *BulkFetchStatItemsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStatCode adds the statCode to the bulk fetch stat items params
func (o *BulkFetchStatItemsParams) WithStatCode(statCode string) *BulkFetchStatItemsParams {
	o.SetStatCode(statCode)
	return o
}

// SetStatCode adds the statCode to the bulk fetch stat items params
func (o *BulkFetchStatItemsParams) SetStatCode(statCode string) {
	o.StatCode = statCode
}

// WithUserIds adds the userIds to the bulk fetch stat items params
func (o *BulkFetchStatItemsParams) WithUserIds(userIds string) *BulkFetchStatItemsParams {
	o.SetUserIds(userIds)
	return o
}

// SetUserIds adds the userIds to the bulk fetch stat items params
func (o *BulkFetchStatItemsParams) SetUserIds(userIds string) {
	o.UserIds = userIds
}

// WriteToRequest writes these params to a swagger request
func (o *BulkFetchStatItemsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// query param statCode
	qrStatCode := o.StatCode
	qStatCode := qrStatCode
	if qStatCode != "" {
		if err := r.SetQueryParam("statCode", qStatCode); err != nil {
			return err
		}
	}

	// query param userIds
	qrUserIds := o.UserIds
	qUserIds := qrUserIds
	if qUserIds != "" {
		if err := r.SetQueryParam("userIds", qUserIds); err != nil {
			return err
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
