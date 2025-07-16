// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package campaign

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

// NewQueryRedeemHistoryParams creates a new QueryRedeemHistoryParams object
// with the default values initialized.
func NewQueryRedeemHistoryParams() *QueryRedeemHistoryParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryRedeemHistoryParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryRedeemHistoryParamsWithTimeout creates a new QueryRedeemHistoryParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryRedeemHistoryParamsWithTimeout(timeout time.Duration) *QueryRedeemHistoryParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryRedeemHistoryParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewQueryRedeemHistoryParamsWithContext creates a new QueryRedeemHistoryParams object
// with the default values initialized, and the ability to set a context for a request
func NewQueryRedeemHistoryParamsWithContext(ctx context.Context) *QueryRedeemHistoryParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryRedeemHistoryParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewQueryRedeemHistoryParamsWithHTTPClient creates a new QueryRedeemHistoryParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryRedeemHistoryParamsWithHTTPClient(client *http.Client) *QueryRedeemHistoryParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryRedeemHistoryParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*QueryRedeemHistoryParams contains all the parameters to send to the API endpoint
for the query redeem history operation typically these are written to a http.Request
*/
type QueryRedeemHistoryParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*CampaignID*/
	CampaignID string
	/*Namespace*/
	Namespace string
	/*Code*/
	Code *string
	/*Limit
	    limit. <div style="border-left: 4px solid #ffc107; background-color: #fff8e1; padding: 10px; margin: 10px 0;">
	    For performance and stability reasons, it is recommended to keep the
	    <code>limit</code> value <strong>no greater than 100</strong>. Using higher values may lead to increased response times or degraded service performance.
	</div>


	*/
	Limit *int32
	/*Offset*/
	Offset *int32
	/*UserID*/
	UserID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the query redeem history params
func (o *QueryRedeemHistoryParams) WithTimeout(timeout time.Duration) *QueryRedeemHistoryParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query redeem history params
func (o *QueryRedeemHistoryParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query redeem history params
func (o *QueryRedeemHistoryParams) WithContext(ctx context.Context) *QueryRedeemHistoryParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query redeem history params
func (o *QueryRedeemHistoryParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query redeem history params
func (o *QueryRedeemHistoryParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query redeem history params
func (o *QueryRedeemHistoryParams) WithHTTPClient(client *http.Client) *QueryRedeemHistoryParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query redeem history params
func (o *QueryRedeemHistoryParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query redeem history params
func (o *QueryRedeemHistoryParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *QueryRedeemHistoryParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithCampaignID adds the campaignID to the query redeem history params
func (o *QueryRedeemHistoryParams) WithCampaignID(campaignID string) *QueryRedeemHistoryParams {
	o.SetCampaignID(campaignID)
	return o
}

// SetCampaignID adds the campaignId to the query redeem history params
func (o *QueryRedeemHistoryParams) SetCampaignID(campaignID string) {
	o.CampaignID = campaignID
}

// WithNamespace adds the namespace to the query redeem history params
func (o *QueryRedeemHistoryParams) WithNamespace(namespace string) *QueryRedeemHistoryParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query redeem history params
func (o *QueryRedeemHistoryParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithCode adds the code to the query redeem history params
func (o *QueryRedeemHistoryParams) WithCode(code *string) *QueryRedeemHistoryParams {
	o.SetCode(code)
	return o
}

// SetCode adds the code to the query redeem history params
func (o *QueryRedeemHistoryParams) SetCode(code *string) {
	o.Code = code
}

// WithLimit adds the limit to the query redeem history params
func (o *QueryRedeemHistoryParams) WithLimit(limit *int32) *QueryRedeemHistoryParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the query redeem history params
func (o *QueryRedeemHistoryParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the query redeem history params
func (o *QueryRedeemHistoryParams) WithOffset(offset *int32) *QueryRedeemHistoryParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the query redeem history params
func (o *QueryRedeemHistoryParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithUserID adds the userID to the query redeem history params
func (o *QueryRedeemHistoryParams) WithUserID(userID *string) *QueryRedeemHistoryParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the query redeem history params
func (o *QueryRedeemHistoryParams) SetUserID(userID *string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *QueryRedeemHistoryParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param campaignId
	if err := r.SetPathParam("campaignId", o.CampaignID); err != nil {
		return err
	}

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
		var qrLimit int32
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt32(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	if o.Offset != nil {

		// query param offset
		var qrOffset int32
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt32(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
				return err
			}
		}

	}

	if o.UserID != nil {

		// query param userId
		var qrUserID string
		if o.UserID != nil {
			qrUserID = *o.UserID
		}
		qUserID := qrUserID
		if qUserID != "" {
			if err := r.SetQueryParam("userId", qUserID); err != nil {
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
