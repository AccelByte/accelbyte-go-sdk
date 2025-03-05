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

// Get the enum in QueryItemReferencesParams
const (
	QueryItemReferencesCAMPAIGNConstant    = "CAMPAIGN"
	QueryItemReferencesCATALOGConstant     = "CATALOG"
	QueryItemReferencesDLCConstant         = "DLC"
	QueryItemReferencesENTITLEMENTConstant = "ENTITLEMENT"
	QueryItemReferencesIAPConstant         = "IAP"
	QueryItemReferencesREWARDConstant      = "REWARD"
)

// NewQueryItemReferencesParams creates a new QueryItemReferencesParams object
// with the default values initialized.
func NewQueryItemReferencesParams() *QueryItemReferencesParams {
	var ()
	return &QueryItemReferencesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryItemReferencesParamsWithTimeout creates a new QueryItemReferencesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryItemReferencesParamsWithTimeout(timeout time.Duration) *QueryItemReferencesParams {
	var ()
	return &QueryItemReferencesParams{

		timeout: timeout,
	}
}

// NewQueryItemReferencesParamsWithContext creates a new QueryItemReferencesParams object
// with the default values initialized, and the ability to set a context for a request
func NewQueryItemReferencesParamsWithContext(ctx context.Context) *QueryItemReferencesParams {
	var ()
	return &QueryItemReferencesParams{

		Context: ctx,
	}
}

// NewQueryItemReferencesParamsWithHTTPClient creates a new QueryItemReferencesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryItemReferencesParamsWithHTTPClient(client *http.Client) *QueryItemReferencesParams {
	var ()
	return &QueryItemReferencesParams{
		HTTPClient: client,
	}
}

/*QueryItemReferencesParams contains all the parameters to send to the API endpoint
for the query item references operation typically these are written to a http.Request
*/
type QueryItemReferencesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ItemID*/
	ItemID string
	/*Namespace*/
	Namespace string
	/*FeaturesToCheck
	  default is empty list

	*/
	FeaturesToCheck []string
	/*StoreID
	  use published store id by default

	*/
	StoreID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the query item references params
func (o *QueryItemReferencesParams) WithTimeout(timeout time.Duration) *QueryItemReferencesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query item references params
func (o *QueryItemReferencesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query item references params
func (o *QueryItemReferencesParams) WithContext(ctx context.Context) *QueryItemReferencesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query item references params
func (o *QueryItemReferencesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query item references params
func (o *QueryItemReferencesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query item references params
func (o *QueryItemReferencesParams) WithHTTPClient(client *http.Client) *QueryItemReferencesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query item references params
func (o *QueryItemReferencesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query item references params
func (o *QueryItemReferencesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *QueryItemReferencesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithItemID adds the itemID to the query item references params
func (o *QueryItemReferencesParams) WithItemID(itemID string) *QueryItemReferencesParams {
	o.SetItemID(itemID)
	return o
}

// SetItemID adds the itemId to the query item references params
func (o *QueryItemReferencesParams) SetItemID(itemID string) {
	o.ItemID = itemID
}

// WithNamespace adds the namespace to the query item references params
func (o *QueryItemReferencesParams) WithNamespace(namespace string) *QueryItemReferencesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query item references params
func (o *QueryItemReferencesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithFeaturesToCheck adds the featuresToCheck to the query item references params
func (o *QueryItemReferencesParams) WithFeaturesToCheck(featuresToCheck []string) *QueryItemReferencesParams {
	o.SetFeaturesToCheck(featuresToCheck)
	return o
}

// SetFeaturesToCheck adds the featuresToCheck to the query item references params
func (o *QueryItemReferencesParams) SetFeaturesToCheck(featuresToCheck []string) {
	o.FeaturesToCheck = featuresToCheck
}

// WithStoreID adds the storeID to the query item references params
func (o *QueryItemReferencesParams) WithStoreID(storeID *string) *QueryItemReferencesParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the query item references params
func (o *QueryItemReferencesParams) SetStoreID(storeID *string) {
	o.StoreID = storeID
}

// WriteToRequest writes these params to a swagger request
func (o *QueryItemReferencesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param itemId
	if err := r.SetPathParam("itemId", o.ItemID); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	valuesFeaturesToCheck := o.FeaturesToCheck

	joinedFeaturesToCheck := swag.JoinByFormat(valuesFeaturesToCheck, "multi")
	// query array param featuresToCheck
	if err := r.SetQueryParam("featuresToCheck", joinedFeaturesToCheck...); err != nil {
		return err
	}

	if o.StoreID != nil {

		// query param storeId
		var qrStoreID string
		if o.StoreID != nil {
			qrStoreID = *o.StoreID
		}
		qStoreID := qrStoreID
		if qStoreID != "" {
			if err := r.SetQueryParam("storeId", qStoreID); err != nil {
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
