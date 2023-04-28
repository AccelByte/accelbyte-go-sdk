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

// NewDownloadParams creates a new DownloadParams object
// with the default values initialized.
func NewDownloadParams() *DownloadParams {
	var ()
	return &DownloadParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDownloadParamsWithTimeout creates a new DownloadParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDownloadParamsWithTimeout(timeout time.Duration) *DownloadParams {
	var ()
	return &DownloadParams{

		timeout: timeout,
	}
}

// NewDownloadParamsWithContext creates a new DownloadParams object
// with the default values initialized, and the ability to set a context for a request
func NewDownloadParamsWithContext(ctx context.Context) *DownloadParams {
	var ()
	return &DownloadParams{

		Context: ctx,
	}
}

// NewDownloadParamsWithHTTPClient creates a new DownloadParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDownloadParamsWithHTTPClient(client *http.Client) *DownloadParams {
	var ()
	return &DownloadParams{
		HTTPClient: client,
	}
}

/*DownloadParams contains all the parameters to send to the API endpoint
for the download operation typically these are written to a http.Request
*/
type DownloadParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*CampaignID*/
	CampaignID string
	/*Namespace*/
	Namespace string
	/*BatchNo*/
	BatchNo *int32

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the download params
func (o *DownloadParams) WithTimeout(timeout time.Duration) *DownloadParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the download params
func (o *DownloadParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the download params
func (o *DownloadParams) WithContext(ctx context.Context) *DownloadParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the download params
func (o *DownloadParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the download params
func (o *DownloadParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the download params
func (o *DownloadParams) WithHTTPClient(client *http.Client) *DownloadParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the download params
func (o *DownloadParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the download params
func (o *DownloadParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithCampaignID adds the campaignID to the download params
func (o *DownloadParams) WithCampaignID(campaignID string) *DownloadParams {
	o.SetCampaignID(campaignID)
	return o
}

// SetCampaignID adds the campaignId to the download params
func (o *DownloadParams) SetCampaignID(campaignID string) {
	o.CampaignID = campaignID
}

// WithNamespace adds the namespace to the download params
func (o *DownloadParams) WithNamespace(namespace string) *DownloadParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the download params
func (o *DownloadParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithBatchNo adds the batchNo to the download params
func (o *DownloadParams) WithBatchNo(batchNo *int32) *DownloadParams {
	o.SetBatchNo(batchNo)
	return o
}

// SetBatchNo adds the batchNo to the download params
func (o *DownloadParams) SetBatchNo(batchNo *int32) {
	o.BatchNo = batchNo
}

// WriteToRequest writes these params to a swagger request
func (o *DownloadParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.BatchNo != nil {

		// query param batchNo
		var qrBatchNo int32
		if o.BatchNo != nil {
			qrBatchNo = *o.BatchNo
		}
		qBatchNo := swag.FormatInt32(qrBatchNo)
		if qBatchNo != "" {
			if err := r.SetQueryParam("batchNo", qBatchNo); err != nil {
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
